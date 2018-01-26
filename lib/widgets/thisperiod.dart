import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class ThisPeriod extends StatefulWidget{
  @override
  State createState() {
    return new _ThisPeriod();
  }
}

class _ThisPeriod extends State<ThisPeriod> {

  DateTime _time;
  DateFormat formatter = new DateFormat.jm();

  Timer _timer;
  @override
  void initState() {
    super.initState();
    _time = new DateTime.now();
    const duration = const Duration(
        seconds: 1
    );
    _timer = new Timer.periodic(duration, _updateTime);
  }

  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }

  void _updateTime(Timer timer){
    setState((){
      _time = new DateTime.now();
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
                  new Text('AD'),
                  new Text(formatter.format(_time)),
                  new Text('CB-512')
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Text('Numerical Methods Lab'),

            ),
            new Expanded(
              flex: 1,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text('48/50'),
                  new Text('96%')
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}