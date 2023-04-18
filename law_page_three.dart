
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/law_info/law_three_data.dart';
import 'package:korelectioninfo/law_info/law_three_json.dart';

class LawThreePage extends StatefulWidget {

  @override
  LawThreePageState createState() => LawThreePageState();
}

class LawThreePageState extends State<LawThreePage> {

  late List<Look> looks;
  String query = '';

  @override
  void initState() {
    super.initState();
    looks = allLooks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('정당법',
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Jua'
          ),),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          buildSearch(),
          Expanded(
            child: ListView.builder(
              itemCount: looks.length,
              itemBuilder: (context, index) {
                final look = looks[index];
                return buildLook(look);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearch() =>
      SearchWidget(
          text: query,
          hintText: '검색어를 입력하세요!',
          onChanged: searchLook
      );

  Widget buildLook(Look look) => Container(
    decoration: BoxDecoration(
      color: Colors.black54,
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
    child: ExpansionTileCard(
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(look.author,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic'
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                    look.title,
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: 'CuteFont'
                    )),
              ),
            ],
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(look.subtitle,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: 'NanumPenScript')),
              ),
            ),
          )
        ]),
  );

  void searchLook(String query) {
    final looks = allLooks.where((look) {
      final titleLower = look.title.toLowerCase();
      final authorLower = look.author.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.looks = looks;
    });
  }
}

class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({required this.text, required this.onChanged, required this.hintText});

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black);
    final styleHint = TextStyle(color: Colors.deepOrange);
    final style = widget.text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
            color: Colors.black26,
            width: 3.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
              Icons.search,
              color: style.color),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
            child: Icon(
                Icons.close,
                color: style.color),
            onTap: () {
              controller.clear();
              widget.onChanged('');
              FocusScope.of(context).requestFocus(FocusNode());
            },
          )
              : null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }
}
