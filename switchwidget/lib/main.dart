import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new MyApp()
  ));
}
class MyApp extends StatefulWidget{
@override
  _State createState() => new _State();
}




class _State extends State<MyApp>{


  bool _selected = false;

  void onChanged(bool value){

  setState(() {
    _selected = value;
  });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Switch Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Switch(value: _selected, onChanged: (bool value){onChanged(value);}),
            new SwitchListTile(
                title: new Text('Click Me'),
                activeColor: Colors.lime,
                secondary: new Icon(Icons.home),
                value: _selected,
                onChanged: (bool value){onChanged(value);

                }),
          ],
        ),
      ),
    );
  }

}
