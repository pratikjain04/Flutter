import 'package:flutter/material.dart';
import 'package:routes/screens/home.dart';
import 'package:routes/screens/second.dart';
import 'package:routes/screens/third.dart';
import 'package:routes/screens/fourth.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Navigation',
        //we put our routes here in the MaterialApp after the title
        routes: <String, WidgetBuilder>{
          //here we will put all the routes
          //'/Home' creates a Home instance in the current BuildContext
          '/Home': (BuildContext context) => new Home(),
          '/Second': (BuildContext context) => new Second(),
          '/Third': (BuildContext context) => new Third(),
          '/Fourth': (BuildContext context) => new Fourth()

        },
        home: new Home(),

    );
  }
}