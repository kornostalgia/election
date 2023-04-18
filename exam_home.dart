
import 'package:flutter/material.dart';
import 'package:korelectioninfo/exam/list_page.dart';
import 'package:korelectioninfo/exam/question_home.dart';

class ExamHome extends StatefulWidget {
  @override
  _ExamHomeState createState() => _ExamHomeState();
}

class _ExamHomeState extends State<ExamHome> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOption = <Widget>[
    ListPop(),
    QuestionHome(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Color(0xff0c0f14),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.help_outline,
              size: 25,
            ),
            label: "오답 노트",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.quiz,
              size: 25,
            ),
            label: "문제 풀기",
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color(0xff4e5053),
        selectedItemColor: Color(0xffd17842),
        onTap: _onItemTapped,
      ),
    );
  }
}