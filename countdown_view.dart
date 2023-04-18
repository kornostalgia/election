import 'package:flutter/material.dart';

class CountdownView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var start = new DateTime(2022, DateTime.march, 10);
    var end = new DateTime.now();
    Duration difference = end.difference(start);

    var start2 = new DateTime(2022, DateTime.june, 2);
    var end2 = new DateTime.now();
    Duration difference2 = end2.difference(start2);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/cal.jpg',
                      height: 200,
                      width: 370,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.45,
                    bottom: MediaQuery.of(context).size.height * 0.06),
                child: Center(
                  child: Text(
                    '대통령선거',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.45,
                    top: MediaQuery.of(context).size.height * 0.02),
                child: Center(
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(-1 / 360),
                    child: Text(
                      difference.inDays.toString(),
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.38,
                    bottom: MediaQuery.of(context).size.height * 0.06),
                child: Center(
                  child: Text(
                    '지방선거',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.38,
                      top: MediaQuery.of(context).size.height * 0.02),
                child: Center(
                  child: Text(
                    difference2.inDays.toString(),
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
