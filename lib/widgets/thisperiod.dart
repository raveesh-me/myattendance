import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:myattendance/model/subjects.dart';
import 'package:myattendance/model/periods.dart';

class ThisPeriod extends StatefulWidget {
  @override
  State createState() {
    return new _ThisPeriod();
  }
}

class _ThisPeriod extends State<ThisPeriod> {
  Timer _timer;
  DateTime _time;
  Subject _subject;
  DateFormat _formatter = new DateFormat.jm();

  @override
  void initState() {
    super.initState();
    _time = new DateTime.now();
    _subject = periods[getMapNumber(_time)];
    const duration = const Duration(minutes: 1);
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
      _subject = periods[getMapNumber(_time)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        height: 150.0,
        child: new Column(
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(_subject.subjectTeacher),
                  new Text(_formatter.format(_time)),
                  new Text(_subject.subjectRoom)
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Text(_subject.subjectName),
            ),
            new Expanded(
              flex: 1,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                     '${_subject.numberOfClassesAttended}/${_subject.numberOfClasses}'),
                  new Text(
                     '${_subject.numberOfClassesAttended/_subject.numberOfClasses}%')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
