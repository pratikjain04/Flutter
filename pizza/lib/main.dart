import 'package:flutter/material.dart';
import 'package:pizza/screens/home.dart';
import 'package:pizza/screens/Order.dart';
import 'package:pizza/screens/review.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new Home(),
        '/Order': (BuildContext context) => new Order(),
        '/Review': (BuildContext context) => new Review(),

      },
      home: new Home(), //without this nothing will appear on the home page
    );
  }
}

