import 'package:flutter/material.dart';
import 'package:pizza/screens/review.dart';
import 'package:pizza/code/pizza.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Pizza Demo'),
      ),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
                //add the image in the assets in pubspec.yaml
              new Image.asset('images/pizza.jpeg'),
              new Padding(
                padding: const EdgeInsets.all(18.0),
                child: new RaisedButton(
                    child: new Text('Order'),
                    onPressed: (){Navigator.of(context).pushNamed('/Order');}   //Navigates to the Order Page on Clicked
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
