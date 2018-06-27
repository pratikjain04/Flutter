import 'package:flutter/material.dart';

class hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.all(5.0), //distance between two texts in row
    child: new Column(
    children: <Widget>[
    new Text('Basic'),
    new Text('Layouts'),
    ],
    ),
    );

  }
}