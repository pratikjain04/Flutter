import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{

  @override
  MyAppState createState() => new  MyAppState();
}




class MyAppState extends State<MyApp>{

  int _selected = 0;

  void onChanged(int value){
    setState(() {

      _selected = value;
    });
    print('Value is $value');
  }



  List<Widget> makeRadios(){
    List<Widget> list = new List<Widget>();

    for(int i = 1;i<=3;i++){  //To make 3 radio buttons
    list.add(
      new Row(
        children: <Widget>[
          new Text('Radio $i'),
          new Radio(value: i, groupValue: _selected, onChanged: (int value){onChanged(value);})
        ],
      )
    );}


    //Now, similarily to make the text clickable in radio buttons we use RadioListTile

    for(int i = 1;i<=3;i++)
      {
        list.add(new RadioListTile(
            value: i,
            title: new Text('Radio $i'),
            groupValue: _selected,
            onChanged: (int value){onChanged(value);},
          activeColor: Colors.lightGreenAccent,
          secondary: new Icon(Icons.home),
          subtitle: new Text('Subtitles Here'),

        ));
      }








    return list;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Radio Button Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: makeRadios(),
          ),
        ),
      ),
    );
  }
}