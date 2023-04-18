import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/talk_on/add_talk.dart';
import 'package:korelectioninfo/talk_on/data/database.dart';
import 'package:korelectioninfo/talk_on/data/talk.dart';
import 'package:korelectioninfo/talk_on/talk_card.dart';

class TalkOnHome extends StatefulWidget {
  @override
  _TalkOnHomeState createState() => _TalkOnHomeState();
}

class _TalkOnHomeState extends State<TalkOnHome> {
  @override
  void initState() {
    super.initState();

    if (!GetIt.instance.isRegistered<TalkDao>()) {
      final db = Database();

      GetIt.instance.registerSingleton<TalkDao>(TalkDao(db));
    }
  }

  @override
  Widget build(BuildContext context) {
    final dao = GetIt.instance<TalkDao>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: secondaryColor,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Q & A',
            style: TextStyle(
              fontFamily: 'Jua',
              fontSize: 20,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.edit,
        ),
        onPressed: () {
          Get.to(() => AddTalk());
        },
      ),
      body: StreamBuilder<List<TalkWithTagModel>>(
        stream: dao.streamTalksWithTags(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;

            return ListView.separated(
                itemBuilder: (_, index) {
                  final item = data[index];

                  return TalkCard(
                    title: item.talk.title,
                    content: item.talk.content,
                    tags: item.tags.map((e) => e.name).toList(),
                    createdAt: item.talk.createdAt,
                  );
                },
                separatorBuilder: (_, index) {
                  return Divider();
                },
                itemCount: data.length);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}