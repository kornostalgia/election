
import 'package:flutter/material.dart';
import 'package:korelectioninfo/local_govern/local_one.dart';
import 'package:korelectioninfo/local_govern/local_two.dart';

class LocalHome extends StatefulWidget {

  @override
  _LocalHomeState createState() => _LocalHomeState();
}

class _LocalHomeState extends State<LocalHome> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    LocalOne(),
    LocalTwo(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
            ),
            label: '활동 기준',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grading,
            ),
            label: '업무추진비',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.pink[400],
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        iconSize: 30.0,
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
      ),
    );
  }
}
