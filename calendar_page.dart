
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:flutter_clean_calendar/clean_calendar_event.dart';
import 'package:korelectioninfo/constant.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {

  final Map<DateTime,List<CleanCalendarEvent>> events = {
    DateTime (DateTime.now().year,DateTime.now().month,DateTime.now().day + 176):
    [
      CleanCalendarEvent('인구수 등의 통보',
          isAllDay: true,
          isDone: true,
          startTime: DateTime(
              DateTime.now().year,DateTime.now().month,DateTime.now().day,09,0),
          endTime:  DateTime(
              DateTime.now().year,DateTime.now().month,DateTime.now().day,18,0),
          description: '인구의 기준일(예비후보등록신청개시일이 속하는 달의 전전달 말일) 후 15일',
          color: Colors.blue),
    ],

    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 183):
    [
      CleanCalendarEvent('선거비용제한액 공고‧통지' + '예비후보자홍보물 발송수량 공고',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 183, 09, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 183, 18, 0),
          description: '예비후보자등록개시일전 10일까지',
          color: Colors.orange),

    ],
  };

  void _handleDate(date) {
    print('Date selected: $date');
  }

  @override
  void initState() {
    super.initState();
    // Force selection of today on first load, so that the list of today's events gets shown.
    _handleDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Text('2022. 6. 1. 전국동시지방선거 주요 선거일정',
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'CuteFont',
              fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 28, 8, 0),
          child: Container(
            child: Calendar(
              startOnMonday: false,
              selectedColor: Colors.blue,
              todayColor: Colors.red,
              eventColor: Colors.green,
              eventDoneColor: Colors.amber,
              bottomBarColor: Colors.deepOrange,
              onRangeSelected: (range) {
                print('selected Day ${range.from},${range.to}');
              },
              onDateSelected: (date){
                return _handleDate(date);
              },
              events: events,
              isExpanded: true,
              isExpandable: true,
              dayOfWeekStyle: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w100,
              ),
              bottomBarTextStyle: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              expandableDateFormat: 'EEEE, dd. MMMM yyyy',
              todayButtonText: '오늘',
              hideBottomBar: false,
              hideArrows: false,
              weekDays: ['월','화','수','목','금','토','일'],
            ),
          ),
        ),
      ),
    );
  }
  }