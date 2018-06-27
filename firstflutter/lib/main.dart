import 'package:flutter/material.dart';

void main()
{
  runApp(           //Starting point of flutter app
                    //this is the only thing that will be running the complete app
      new Center(
    child: new MyApp(), //the main class in which is code is present which we want to run
    )
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return new MaterialApp(   //The material app is the giant white background of the app
        title: 'Hello Flutter',
        home: new Scaffold(       //home cannot be undefined, it raises an error if undefined
          //Scaffold are like structures put up to reach the different parts of the applications
          //They are like the bamboos put up so that the building can be painted or repaired by reaching it all over
          appBar: new AppBar(title: new Text('Hello Flutter') ,), //The topmost toolbar in the app
          body: new Center(         //The area below the appBar is the body
            child: new RaisedButton(  //puts a button on the centre
                onPressed: null,
                child: new Text('Click Me'),  //Text on the button
            ),
          ),

        ),
      );
  }
}