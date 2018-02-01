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
        padding: const EdgeInsets.all(8.0),
        height: 90.0,
        color: smallCardBackgroundColor,
        child: new Row(
          children: <Widget>[
            new Expanded(
              flex: 2,
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
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                        color: smallCardSmallText,
                        wordSpacing: 4.0),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            new Expanded(
              flex: 1,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                    '${subject.numberOfClassesAttended}',
                    style: new TextStyle(
                        color: smallCardSmallText, fontSize: 18.0),
                  ),
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
            new Expanded(
              flex: 1,
              child: new Container(
                  padding: new EdgeInsets.fromLTRB(20.0, 20.0, 30.0, 20.0),
                  decoration: new BoxDecoration(
                    color: themeAccentColor,
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                  child: new MaterialButton(
                    onPressed: () => registerAbsent(),
                    child: new Container(
                      child: new Text('A',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: bigCardSmallText)),
                    ),
                  )),
            ),
            new Expanded(
              flex: 1,
              child: new Container(
                  padding: new EdgeInsets.all(20.0),
                  decoration: new BoxDecoration(
                    color: presentBackgroundColor,
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                  child: new MaterialButton(
                    onPressed: () => registerPresent(),
                    child: new Container(
                      child: new Text('P',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              color: bigCardSmallText)),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
