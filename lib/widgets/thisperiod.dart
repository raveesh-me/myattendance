import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myattendance/model/subjects.dart';

class ThisPeriod extends StatelessWidget {
  final Subject _subject;
  final DateTime _time;
  final DateFormat _formatter = new DateFormat.jm();


  ThisPeriod(this._subject, this._time);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        height: 150.0,
        decoration: new BoxDecoration(color: Colors.black),
        child: new Column(
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(
                    _subject.subjectTeacher,
                    style: new TextStyle(color: Colors.white),
                  ),
                  new Text(
                    _formatter.format(_time),
                    style: new TextStyle(color: Colors.white),
                  ),
                  new Text(
                    _subject.subjectRoom,
                    style: new TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Text(
                _subject.subjectName,
                style: new TextStyle(color: Colors.white),
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                    _subject.numberOfClasses == null
                        ? '..'
                        : '${_subject.numberOfClassesAttended}/${_subject
                        .numberOfClasses}',
                    style: new TextStyle(color: Colors.white),
                  ),
                  new Text(
                    '${_subject.numberOfClassesAttended /
                        _subject.numberOfClasses}%',
                    style: new TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

