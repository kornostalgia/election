import 'package:flutter/material.dart';
import 'package:korelectioninfo/constant.dart';

class Price extends StatelessWidget {
  const Price({
    Key? key,
    required this.amount,
  }) : super(key: key);

  final String amount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "\$",
        style: TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: amount,
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: "/1ea",
            style:
                TextStyle(color: Colors.black26, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
