
import 'package:korelectioninfo/talk_on/data/tag.dart';
import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';
import 'database.dart';

part 'talk.g.dart';

class Talk extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1, max: 10)();

  TextColumn get content => text()();

  DateTimeColumn get createdAt =>
      dateTime().withDefault(Constant(DateTime.now()))();
}

class TalkWithTag extends Table {
  IntColumn get talkId => integer().customConstraint('REFERENCES talk(id)')();

  IntColumn get tagId => integer().customConstraint('REFERENCES tag(id)')();

  @override
  List<String> get customConstraints => ['UNIQUE (talk_id, tag_id)'];
}

class TalkWithTagModel {
  final TalkData talk;
  final List<TagData> tags;

  TalkWithTagModel({
    required this.talk,
    required this.tags,
  });
}

@UseDao(tables: [Talk, Tag, TalkWithTag])
class TalkDao extends DatabaseAccessor<Database> with _$TalkDaoMixin {
  TalkDao(Database db) : super(db);

  Stream<List<TalkWithTagModel>> streamTalksWithTags() {
    final talksStream = select(talk).watch();

    return talksStream.switchMap((talks) {
      final idToTalk = {for (var talk in talks) talk.id: talk};

      final talkIds = idToTalk.keys;

      final tagQuery = select(talkWithTag).join([
        innerJoin(tag, tag.id.equalsExp(talkWithTag.tagId)),
      ])
        ..where(talkWithTag.talkId.isIn(talkIds));

      return tagQuery.watch().map((rows) {
        final idToTags = <int, List<TagData>>{};

        for (var row in rows) {
          final tags = row.readTable(tag);
          final id = row.readTable(talkWithTag).talkId;

          idToTags.putIfAbsent(id, () => []).add(tags);
        }

        return [
          for (var id in talkIds)
            TalkWithTagModel(talk: idToTalk[id]!, tags: idToTags[id]!)
        ];
      });
    });
  }

  Stream<List<TalkData>> streamTalks() => select(talk).watch();

  Stream<TalkData> streamTalk(int id) =>
      (select(talk)..where((tbl) => tbl.id.equals(id))).watchSingle();

  Future insertTalk(TalkCompanion data, String talkTags) async {
    return transaction(() async {
      final tags = talkTags.split(',').length > 0
          ? talkTags.split(',')
          : [
        talkTags,
      ];
      final tagIds = [];

      for (var talkTag in tags) {
        final tagCompanion = TagCompanion(
          name: Value(talkTag),
        );
        await into(tag).insert(
          tagCompanion,
          mode: InsertMode.insertOrIgnore,
        );

        final tagInst = await (select(tag)
          ..where((tbl) => tbl.name.equals(talkTag)))
            .getSingle();

        tagIds.add(tagInst.id);
      }

      final talkId = await into(talk).insert(data);

      for (var tagId in tagIds) {
        await into(talkWithTag).insert(
          TalkWithTagCompanion(
            talkId: Value(talkId),
            tagId: Value(tagId),
          ),
        );
      }
    });
  }
}