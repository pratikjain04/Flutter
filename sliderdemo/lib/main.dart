import 'package:flutter/material.dart';


void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{     //Stateful Widget means that something in the state will change

  @override
  MyAppState createState() => new MyAppState(); //This means we have a state and we want to create it and track it
}

class MyAppState extends State<MyApp>{

  double _value = 0.0;
  void _onChanged(double value){
    setState(() {

      _value = value;
    });
  }


  //State is the thing which actually changes
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Slider Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
              new Text('The slider value is ${(_value*100).round()}'),
              new Slider(value: _value, onChanged: (double value){_onChanged(value);}),

              //The value of sliders are tracked in 0.01 decimals, so we can multipply by 100 if we want a clear integer
              new Text('Progress Value is ${_value}'),
              new LinearProgressIndicator(value: _value,)
          ],
        ),
      ),
    );
  }

}