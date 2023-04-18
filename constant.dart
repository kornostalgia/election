
import 'package:flutter/material.dart';

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

const defaultPadding = 16.0;
const cartBarHeight = 60.0;
const headerHeight = 60.0;

const panelTransition = Duration(milliseconds: 500);

class AppColor {
  static const primaryColor = Color(0xffa3ecec);
  static const secondaryColor = Color(0xff081053);
  static const tertiaryColor = Color(0xff010209);
  static const darkSecondaryColor = Color(0xff080e2b);
  static const lightTertiaryColor = Color(0xff040613);
  static const white = Colors.white;
  static const lightSecondary = Color(0xff1f2972);
}

class PrimaryText extends StatelessWidget {
  final double size;
  final Color color;
  final TextOverflow overflow;
  final FontWeight fontWeight;
  final String text;

  const PrimaryText({
    this.size: 16,
    this.color: AppColor.primaryColor,
    this.fontWeight: FontWeight.w600,
    this.overflow: TextOverflow.visible,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}