import 'package:flutter/material.dart';
import 'package:korelectioninfo/Congress/congress_list_model.dart';
import 'package:korelectioninfo/constant.dart';

import 'congress_list_model2.dart';

class CongressTwo extends StatefulWidget {
  @override
  _CongressTwoState createState() => _CongressTwoState();
}

class _CongressTwoState extends State<CongressTwo> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 8,
          backgroundColor: secondaryColor,
          title: Center(
            child: Text(
              '제21대 국회의원 현황(비례)',
              style: TextStyle(
                fontFamily: 'Jua',
                fontSize: 20,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: CongressList2(
              aspectRatio: 0.6,
              spacing: 10,
              itemBuilder: (context, index) {
                return PopularItem2(popular2: populars2[index]);
              },
              itemCount: populars2.length),
        ),
      ),
    );
  }
}

class PopularItem2 extends StatelessWidget {
  const PopularItem2({Key? key, required this.popular2}) : super(key: key);

  final Popular2 popular2;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(popular2.image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: <Widget>[
                Text(
                  popular2.name,
                  style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'NanumGothic',
                      fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ]),
            )
          ]),
    );
  }
}

class CongressList2 extends StatelessWidget {
  const CongressList2({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.spacing = 0.0,
    this.aspectRatio = 0.5,
  }) : super(key: key);

  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final double spacing;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      final height = constraints.maxHeight;
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: aspectRatio,
          crossAxisSpacing: spacing,
          mainAxisSpacing: spacing,
        ),
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: Offset(0, index.isOdd ? 0 : 0),
            child: itemBuilder(context, index),
          );
        },
      );
    });
  }
}
