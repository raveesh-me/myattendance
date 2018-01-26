import 'package:flutter/material.dart';
import 'attendancelist.dart';
import 'thisperiod.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Expanded(
            flex: 3,
            child: new ThisPeriod(),
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