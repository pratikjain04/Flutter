import 'package:flutter/material.dart';

void main()
{
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp>{

  String _value = '';

  List<String> _values = new List<String>();

  @override
  void initState() {
    _values.addAll(['Pratik', 'Limca', 'Cherry', 'Mango']);
    _value = _values.elementAt(0);
  }

  void onChanged(String value)
  {
    setState(() {

      _value = value;
    });
  }
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('DropDown Button Demo'),
        backgroundColor: Colors.lime,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new DropdownButton(
                value: _value,
                items: _values.map((String value){
                  //"_values" is a list of string and what map does is that it does to every single item
                  //and performs a function on it and that function will be right here
                return new DropdownMenuItem(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        
                        new Icon(Icons.home),
                        new Text('Person is $value')
                      ],
                    )

                );

                    //Here we create a list of of drop down menu items

                }).toList(),    //Here in items we actually map the values
                onChanged: (String value){onChanged(value);},
            )
          ],
        ),
      ),
    );
  }

}