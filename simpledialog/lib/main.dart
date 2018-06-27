import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}


enum Answer{
  Yes,
  No,
  Maybe
}


class _MyAppState extends State<MyApp> {

  String _answer = '';
  void setAnswer(String value){
    setState(() {
      _answer = value;
    });
  }


  //The function is returning Future<Null> which means we are not returning anything
  //The function is async, it has to await on the switch to get completed
  Future<Null> _askUser() async {
    switch(
      await showDialog(
          context: context,
          child: new SimpleDialog(    //The code works fine, even if the child is deprecated!!!
            title: new Text('Do you like Flutter?'),
            children: <Widget>[
              new SimpleDialogOption(
                onPressed: (){Navigator.pop(context, Answer.Yes);},   //context is the current context and Answer.Yes is the dynamic Result
                child: const Text('Yes!!'),
              ),
              new SimpleDialogOption(
                onPressed: (){Navigator.pop(context, Answer.No);},   //context is the current context and Answer.No is the dynamic Result
                child: const Text('No!!'),
              ),
              new SimpleDialogOption(
                onPressed: (){Navigator.pop(context, Answer.Maybe);},   //context is the current context and Answer.Maybe is the dynamic Result
                child: const Text('Maybe!!'),
              ),
              //We can add here any kind of widget we want, for example a Icon
              new Icon(Icons.home),
            ],
          )


      )

    )
    {
      case Answer.Yes:
        setAnswer('Yes');
        break;
      case Answer.No:
        setAnswer('No');
        break;
      case Answer.Maybe:
        setAnswer('MayBe');
        break;
    }
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Title of the App Bar here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Your Answer: $_answer'),
            new RaisedButton(
                child: new Text('Question here!!'),
                onPressed: (){_askUser();}
            ),
          ],
        ),
      ),
    );
  }
}
