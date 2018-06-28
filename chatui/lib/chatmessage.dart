import 'package:flutter/material.dart';

const String name = 'Pratik';



class Message extends StatelessWidget{

  final String text;
  //we need a constructor here to receive the text. The curly braces means the parameter is optional
  Message({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text(name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(name, style: Theme.of(context).textTheme.subhead),
              //textTheme.subhead has some predefined font size that looks professional so we add that to our current context
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              ),

            ],
          )

        ],
      ),
    );
  }
}