import 'package:flutter/material.dart';
import 'widgets/home.dart';

void main() {
  runApp(new MyAttendanceApp());
}

class MyAttendanceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'myAttendance',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('myAttendance'),
        ),
        body: new HomeScreen(),
      ),
    );
  }
}
