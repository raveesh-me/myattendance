import 'package:flutter/material.dart';
import 'attendancelist.dart';
import 'thisperiod.dart';
import 'package:myattendance/model/timetable.dart';
import 'package:myattendance/model/subjects.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  @override
  State createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  Timer _timer;
  DateTime _time;
  Subject _subject;

  Widget _buildProgressIndicator() {
    return new Center(
      child: new CircularProgressIndicator(),
    );
  }

  @override
  void initState() {
    super.initState();
    _time = new DateTime.now();
    _subject = table[getMapNumber(_time)];
    const duration = const Duration(seconds: 1);
    _timer = new Timer.periodic(duration, _updateTime);
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _updateTime(Timer timer) {
    setState(() {
      _time = new DateTime.now();
      _subject = table[getMapNumber(_time)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return _subject.numberOfClasses == null
        ? _buildProgressIndicator()
        : new Center(
            child: new Column(
              children: <Widget>[
                new Expanded(
                  flex: 3,
                  child: new ThisPeriod(_subject, _time),
                ),
                new Expanded(
                  flex: 8,
                  child: new AttendanceList(),
                ),
              ],
            ),
          );
  }
}
