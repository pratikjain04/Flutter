import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {

  final String title;   //title of the NewPage and we will pass it in a constructor

  NewPage(this.title);  //constructor




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text(title)),
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}

