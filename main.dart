
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:korelectioninfo/home_page.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/union/union_controller.dart';

void main() async {
  Get.put(UnionController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white, fontFamily: 'NanumPenScript'),
        canvasColor: secondaryColor,
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: AnimatedSplashScreen(splash: 'assets/icons/icon.png', nextScreen: HomePage(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: 200,)
    );
  }
}
