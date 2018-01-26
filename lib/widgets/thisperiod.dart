import 'package:flutter/material.dart';
class ThisPeriod extends StatefulWidget{
  @override
  State createState() {
    return new _ThisPeriod();
  }
}

class _ThisPeriod extends State<ThisPeriod> {


  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Expanded(
              flex: 2,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text('AD'),
                  new Text('11:45 AM'),
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