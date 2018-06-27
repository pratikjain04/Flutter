import 'package:flutter/material.dart';

class Third extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('Third')
      ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('This is the Third Screen'),
                new RaisedButton(
                    child: new Text('Next'),
                    onPressed: (){Navigator.of(context).pushNamed('/Fourth');})
                //When the RaisedButton is pressed, the navigator of the current context will push the screen with the following name
                //inside the pushNamed() we give the actual route
              ],
            ),
          ),
        ),
      );
//
  }

}