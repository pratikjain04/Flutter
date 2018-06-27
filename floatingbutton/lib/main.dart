import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,      //To remove the debug tag from top right
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _lastpress = 'never';


  void _onPressed(){
    print('Pressed');
    setState(() {
      DateTime current = new DateTime.now();
      _lastpress = current.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Floating Point Button Demo'),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: (){_onPressed();},      //for onPressed we make a callback function as always
        child: new Icon(Icons.timer),         //Icon you want on the floating button
        backgroundColor: Colors.red,          //Background Colour of the floating point button

      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Last Pressed $_lastpress'),
          ],
        ),
      ),
    );
  }
}
