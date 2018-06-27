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
        title: new Text('Drawer Demo'),
      ),
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Hello Drawer'),
              new RaisedButton(
                color: Colors.redAccent,
                child: new Text('Close'),
                onPressed: (){Navigator.pop(context);}, //This will make a red button in the drawer
                //And when pressed
              )
            ],
          )
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[new Text('No Widgets here for the moment')],
          ),
        ),
      ),
    );
  }
}
