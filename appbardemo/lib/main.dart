import 'package:flutter/material.dart';

void main() => runApp(new MyApp());     //"new MyApp()" creates an instance of the class MyApp

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => new _MyAppState();      //This will override the default state with our custom state

}


class _MyAppState extends State<MyApp>{
  String _title = 'App Bar Demo';
  String _myState = 'Emptiness';

  void _pressed(String message){
    //Correct Way of changing the state
    /*There is a memory map called State under the hood, and setState() finds the
    key to the variable mentioned and set the value as entered below.
    */
    setState(() {
      _myState = message;
    });

    //_myState = message;     //WRONG WAY OF CHANGING THE STATE
    /*This is wrong way of doing it because it does not save the current state
     in the memory, so if you switch to another app, and come back to the app
     the state is again set to the default value and all the changes are lost */
    print(_myState);
  }
	//Here starts the main layout of the app!!!!!
  @override
  Widget build(BuildContext context) {    //Without Widget build there is no concrete implementation of the class
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new Text('lalalala'),       //prints the string on the appbar
            new IconButton(icon: new Icon(Icons.add_alert), onPressed: (){_pressed('Alert!!');}),   //In Icons we can add any in-built icon
            // onPressed needs a function to operate
            //the function tells it what to do when its pressed
            //so we create a function for onPressed always
            //"Hey, use this function and call this code"
            new IconButton(icon: new Icon(Icons.pregnant_woman), onPressed: (){_pressed('Pregnant Woman needs Delivery!!');}),
            //These statements don't print anything on the app when the button is pressed, but displays these messages here in the running console
            //This is because we didn't change the state  yet.
            new IconButton(icon: new Icon(Icons.people), onPressed: (){_pressed('People are watching!');}),
            //After writing the setState() , the display on the app is changing
            new RaisedButton(child: new Text('Menu'),onPressed: (){ _pressed('Menu');}),

            //the widgets are added from left to right as we code from top to bottom


          ],            //"actions" takes a list of Widgets
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );

  }
}

