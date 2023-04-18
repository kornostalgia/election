import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';

class UnionThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 3,
                  colorClickableText: Colors.red,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' 자세히',
                  trimExpandedText: ' 접기',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
            ],
          ),
        ),
      ),
    );
  }
}