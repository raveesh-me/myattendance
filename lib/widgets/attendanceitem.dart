import 'package:flutter/material.dart';
import 'package:myattendance/model/subjects.dart';
import 'colors.dart';

class AttendanceItem extends StatefulWidget {
  final Subject subject;
  AttendanceItem(this.subject);
  @override
  State createState() => new _AttendanceItem(subject);
}

class _AttendanceItem extends State<AttendanceItem> {
  Subject subject;
  _AttendanceItem(this.subject);

  void registerPresent() {
    setState(() => subject.registerPresent());
  }

  void registerAbsent() {
    setState(() => subject.registerAbsent());
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        height: 90.0,
        color: smallCardBackgroundColor,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Expanded(
              flex: 14,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(subject.subjectCode,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: smallCardBigText,
                          fontSize: 16.0)),
                  new Text(
                    subject.subjectName,
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: smallCardSmallText,
                    ),
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            new Expanded(
              flex: 6,
              child: new Container(
                color: Colors.white,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      '${subject.numberOfClassesAttended}',
                      style: new TextStyle(
                          color: smallCardSmallText, fontSize: 18.0),
                    ),
                    new Text('---'),
                    new Text(
                      '${subject.numberOfClasses}',
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: smallCardSmallText),
                    ),
                  ],
                ),
              ),
            ),
            new Expanded(
              flex: 7,
              child: new Container(
                    decoration: new ShapeDecoration(
                      shape: new CircleBorder(),
                      color: absentButtonColor,
                    ),
                    child: new MaterialButton(
                      onPressed: () {
                        registerAbsent();
                      },
                      child: new Text('A',
                      style: new TextStyle(
                        fontSize: 50.0,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
            ),
            new Expanded(
              flex: 7,
              child: new Container(
                decoration: new ShapeDecoration(
                  shape: new CircleBorder(),
                  color: presentButtonColor,
                ),
                child: new MaterialButton(
                  onPressed: () {
                    registerPresent();
                  },
                  child: new Text('P',
                    style: new TextStyle(
                        fontSize: 50.0,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
