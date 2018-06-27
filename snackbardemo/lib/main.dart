import 'package:flutter/material.dart';

/*  SnackBar is the bar on the bottom of the screen which pops up to display an information when a
    button is pressed. For example, you save a writeUp, and then when you hit "Save", a message pops
    up, "Write Up Saved". The area where the message is displayed is called the Snack Bar.
 */


void main()
{
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() =>  new MyAppState();

}

class MyAppState extends State<MyApp>{

  String _text = '';

  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  //GlobalKey is the for the whole app
  //Therefore, there can be only one _scaffoldstate variable in the whole app

  void _onChange(String value){
    setState(() {                     //Updating the state when onChange is called from the text field
      _text = value;
    });
  }

  void _showSnackBar(String value){
    if(value.isEmpty)  return;  //we don't want an empty snackbar so we just get out of here
    _scaffoldstate.currentState.showSnackBar(
      new SnackBar(content: new Text(value))      //Content is the content which will be displayed in the SnackBar
    );

  }

  //Here we define the main UI of the app because this is were all the state changes will take place
  @override
  Widget build(BuildContext context){

    return new Scaffold(
      key: _scaffoldstate,
      appBar: new AppBar(title: new Text('Snack Bar'),

      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value){_onChange(value);},
                //when onChanged is triggered we are going to pop out the variable "value" and pass it to _onCHanged()
              ),
              new RaisedButton(
                  child: new Text('Snack Bar'),
                  onPressed: (){_showSnackBar(_text);}
                  //On the button being Pressed, _showSnackBar() is being called, which displays the content
              )

            ],
          ),
        ),
      ),
    );
  }
}

