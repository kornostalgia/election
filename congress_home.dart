import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:korelectioninfo/Congress/congress_one.dart';
import 'package:korelectioninfo/congress/congress_two.dart';

class CongressHome extends StatefulWidget {
  @override
  _CongressHomeState createState() => _CongressHomeState();
}

class _CongressHomeState extends State<CongressHome> {
  int index = 0;

  List<Widget> pageList = <Widget>[
    CongressOne(),
    CongressTwo(),
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
          ), label: '지역구'),
          BottomNavigationBarItem(icon: Icon(
            Icons.group_outlined,
          ), label: '비례'),
        ],
        onTap: (int index) => setState(() => this.index = index),
      ),
    );
  }
}