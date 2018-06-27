import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyState createState() => new _MyState();
}

class _MyState extends State<MyApp> {
  String _title = 'Unit Converter';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.lightGreen,
          title: new Text(_title),
        ),
        body: new Container(
          color: Colors.lightGreenAccent,
          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 4.0, 50.0),
          child: new InkWell(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new IconButton(icon: new Icon(Icons.branding_watermark), iconSize: 40.0,onPressed: null),
                ),
                new Center(
                    child: new Text(
                        'Area',
                        style: TextStyle(fontSize: 30.0),
                        textAlign: TextAlign.center
                    )
                )
                  
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
