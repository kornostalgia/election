import 'package:flutter/material.dart';
import 'package:korelectioninfo/constant.dart';

class HotPage extends StatelessWidget {
  final String description =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: secondaryColor,
        title: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              '선거로2',
              style: TextStyle(
                fontFamily: 'Jua',
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
      body: new Container(
        child: new DescriptionTextWidget(text: description),
      ),
    );
  }
}

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({required this.text});

  @override
  _DescriptionTextWidgetState createState() =>
      new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  bool flag = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(8),
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      widget.text,
                      overflow: flag ? TextOverflow.ellipsis : null,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          flag ? "더 보 기" : "안 보 기",
                          style: new TextStyle(
                            fontSize: 18,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        flag = !flag;
                      });
                    },
                  ),
                ],
              )),
        ),
      ],
    );
  }
}