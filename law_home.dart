
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:korelectioninfo/law_info/law_page_one.dart';
import 'package:korelectioninfo/law_info/law_page_three.dart';
import 'package:korelectioninfo/law_info/law_page_two.dart';


class LawHome extends StatefulWidget {
  @override
  _LawHomeState createState() => _LawHomeState();
}

class _LawHomeState extends State<LawHome> {
  int index = 0;

  List<Widget> pageList = <Widget>[
    LawOnePage(),
    LawTwoPage(),
    LawThreePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) => FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: pageList[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[500],
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.how_to_vote_outlined,
          ), label: '공직선거법'),
          BottomNavigationBarItem(icon: Icon(
            Icons.shopping_cart_outlined,
          ), label: '정치자금법'),
          BottomNavigationBarItem(icon: Icon(
            Icons.group_outlined,
          ), label: '정당법'),
        ],
        onTap: (int index) => setState(() => this.index = index),
      ),
    );
  }
}
