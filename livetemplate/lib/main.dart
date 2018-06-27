import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Title of the App Bar here'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[new Text('Add Widgets Here')],
        ),
      ),
    );
  }
}
