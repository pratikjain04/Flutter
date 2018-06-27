import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

void onPressed(){       //Just to make tapping work.

  print('Pressed');
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Coming Soon',
          style: new TextStyle(
              color: Colors.white,
              fontFamily: 'Raleway',      //need to add fonts in fonts folder and also specify in pubspec.yaml
              fontStyle: FontStyle.italic,
          ),),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search, color: Colors.white,), onPressed: (){onPressed();}),
          new IconButton(icon: new Icon(Icons.more_vert, color: Colors.white), onPressed: (){onPressed();}),
        ],


      ),
      body: Center(
        child: new Container(

          padding: new EdgeInsets.symmetric(vertical: 175.0),
          child: Center(
            child: new Column(
              children: <Widget>[
                new Image.asset('images/smiley.png', height: 75.0,width: 75.0),
                new Text(''),
                new Text(
                  'Coming Soon',
                  softWrap: true,
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),),
                new Text(''),
                new Text('Under Development'),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
