import 'package:flutter/material.dart';
import 'package:korelectioninfo/union/union_data.dart';
import 'package:korelectioninfo/union/union_json.dart';

class UnionOne extends StatefulWidget {
  @override
  _UnionOneState createState() => _UnionOneState();
}

class _UnionOneState extends State<UnionOne> {
  late List<Union> unions;

  String query = '';

  @override
  void initState() {
    super.initState();
    unions = allUnions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('공공단체 등 위탁선거에 관한 법률',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Jua'
            ),),
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        body: Column(children: <Widget>[
      Expanded(
          child: ListView.builder(
        itemCount: unions.length,
        itemBuilder: (context, index) {
          final union = unions[index];
          return buildUnion(union);
        },
      ))
    ]));
  }

  Widget buildUnion(Union union) =>
      Container(
          color: Colors.grey[300],
          child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                    child: Center(
                      child: Container(
                         width: MediaQuery.of(context).size.width * 0.95,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 35,
                                spreadRadius: 1.0,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 15,
                                spreadRadius: 1.0,
                                offset: Offset(-4, -4),
                              ),
                            ],
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 8),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 10,
                                          backgroundColor: Colors.blueGrey,
                                          foregroundColor: Colors.yellowAccent,
                                          child: CircleAvatar(
                                            child: Text(
                                              union.id.toString(),
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.white),
                                            ),
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text(union.author,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontFamily: 'NanumGothic',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(union.title,
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                  ),
                                ),
                              ])),
                    ))
              ])));
}