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
String _text ='';

//TextField is a Stateless Widget, so we need to grab the text as they occur.
//Therefore, we create an onPressed function, which will save the state
  void onChanged(String value){
    setState(() {
      _text = value;
    });

  }


  void onPressed(){
  print('Text is $_text');
}
  void onPressed2(){
    print(_controller.text);
  }
final TextEditingController _controller = new TextEditingController();

@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text Field Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value){onChanged(value);} ,
                controller: _controller,
                maxLines: 3,
                autocorrect: true,      //For autocorrect property
                //obscureText: true,    //For Passwords

                decoration: new InputDecoration(
                  icon: new Icon(Icons.print),
                  hintText: 'Type Something Here',
                  labelText: 'What is your name?'       //it pops up when you click on the Writing area

                ),
              ),
              new RaisedButton(onPressed: (){
                //onPressed();
                  onPressed2();
              },
                child: new Text('Submit'),)
            ],
          ),
        ),
      ),
    );
  }
}