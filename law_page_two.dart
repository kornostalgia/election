
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:korelectioninfo/law_info/law_two_data.dart';
import 'package:korelectioninfo/law_info/law_two_json.dart';

class LawTwoPage extends StatefulWidget {

  @override
  LawTwoPageState createState() => LawTwoPageState();
}

class LawTwoPageState extends State<LawTwoPage> {

  late List<Cook> cooks;
  String query = '';

  @override
  void initState() {
    super.initState();
    cooks = allCooks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('정치자금법',
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
              itemCount: cooks.length,
              itemBuilder: (context, index) {
                final cook = cooks[index];
                return buildCook(cook);
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
          onChanged: searchCook
      );

  Widget buildCook(Cook cook) => Container(
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
              Text(cook.author,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.orangeAccent,
                      fontFamily: 'NanumGothic'
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                    cook.title,
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
                child: Text(cook.subtitle,
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

  void searchCook(String query) {
    final cooks = allCooks.where((cook) {
      final titleLower = cook.title.toLowerCase();
      final authorLower = cook.author.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.cooks = cooks;
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
