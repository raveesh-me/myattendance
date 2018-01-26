import 'package:flutter/material.dart';
import 'package:myattendance/model/subjects.dart';

class AttendanceItem extends StatefulWidget{
  final Subject subject;
  AttendanceItem(this.subject);
  @override
  State createState() => new _AttendanceItem(subject);
}

class _AttendanceItem extends State<AttendanceItem>{
  Subject subject;
  _AttendanceItem(this.subject);

  void registerPresent(){
    setState(()=>subject.registerPresent());
  }

  void registerAbsent(){
    setState(()=>subject.registerAbsent());
  }
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        height: 60.0,
        child: new Row(
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new Column(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: new Text(subject.subjectCode),
                  ),
                  new Expanded(
                    flex: 2,
                    child: new Text(subject.subjectName),
                  )
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(subject.numberOfClassesAttended.toString()),
                  new Text(subject.numberOfClasses.toString()),
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new MaterialButton(
                onPressed: () => registerAbsent(),
                child: new Container(
                  color: Colors.orangeAccent,
                  child: new Text('A'),
                ),
              )
            ),
            new Expanded(
              flex: 1,
                child: new MaterialButton(
                  onPressed: () => registerPresent(),
                  child: new Container(
                    color: Colors.greenAccent,
                    child: new Text('P'),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}