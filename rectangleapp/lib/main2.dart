import 'package:flutter/material.dart';

class HelloRectangle extends StatelessWidget {
  /*Here we create a class which will inherit the properties of StatelessWidget
  and return our HelloRectangle's Widget
                                                          */
  @override
  Widget build(BuildContext context) {
    return new Center(
      //We can wrap our widget by putting the cursor right before the bracket of the widget
      child: Container(
        // and press Alt+Enter
        color: Colors
            .lightGreenAccent, //containers have various properties like height,width, padding, etc.
        height: 300.0, //all values are of pixels
        width: 400.0,
        child: new Center(
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 40.0),
          ),
        ), //Text is also a widget, so we can play with the properties like the font size, font colour
        //add font style,etc
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //It provides Drawers, AppBars, bottom navigation, tabs and floating point buttons
        appBar: AppBar(
          title: Text('Hello!'),
        ),
        body:
            HelloRectangle(), //writing the complete body in here is a bad idea
        //it always makes the code messy, we will make a function instead
      ),
    ),
  ); //runApp(app) requires a widget as parameter input
} //Therefore we pass Container.
