import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    title: 'Theme',
    //Theme
    theme: new ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreen,
      brightness: Brightness.dark,          //dark theme of the application
    ),
  ));
}
String bright = 'Brightness.dark';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = 'Hello World';
  void onTap() {
    setState(() {
      if (msg.startsWith('H'))
        msg = 'Welcome to the New World';
      else if (msg.startsWith('W'))
        msg = 'Welcome to Parellel World';
      else
        msg = 'Hello World';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('State Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(msg),
              new Container(
                padding: new EdgeInsets.all(18.0),
                child: new RaisedButton(
                  color: Colors.pink[100],
                  child: new Text(
                    'Click here',
                    style: new TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    onTap();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
