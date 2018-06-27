import 'package:flutter/material.dart';
import 'package:basiclayouts/hello.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  return new MaterialApp(
    title: 'Basic Layouts' ,     //Name of the app
    home: new Scaffold(
      appBar: new AppBar(title: new Text('Basic Layouts'),),    //title bar name
      body: new Container(      //we use container because we need padding
        padding: const EdgeInsets.all(32.0), //distance from titlebar
      child: new Center(    //all data to be centre aligned
        child: new Column(  //top to bottom flow in the body
          children: <Widget>[   //children will hold data of type widget
            //widget accepts a list
            //its basically an widget type array
            new hello(),
            new Row(        //left to right flow in the body
              crossAxisAlignment: CrossAxisAlignment.center,    //don't know much about these allignments
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                     new hello(),
                     new hello(),
                     new hello()

              ],
            )
          ],
        ),
      ),

      ),
    ),
  );
 }
}