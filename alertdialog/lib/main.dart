import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

enum MyDialogueAction{
  yes,
  no,
  maybe
}

class MyAppState extends State<MyApp> {
  String _text = '';

  void _onChange(String value) {
    setState(() {
      _text = value; //we set state because we want to change the state when the text is written
                      //and pushed by the user
    });
  }

  void _dialogueResult(MyDialogueAction value){ //MyDialogueAction is the enum we defined above
    print('You Selected $value');
    Navigator.pop(context);         //to close the navigator and pop to the current context
  }

  void _showAlert(String value) {
    if (value.isEmpty) return;

    AlertDialog dialog = new AlertDialog(
      //This creates an instance for the AlertDialog and inside the paranthesis
      content: new Text(
        value, //"value" is the text
        style: new TextStyle(fontSize: 30.0),
      ), //we can set the required parameters, as we want the Alert Dialog to be
      actions: <Widget>[
        new FlatButton(onPressed: (){_dialogueResult(MyDialogueAction.yes);}, child: new Text('Yes')),
        new FlatButton(onPressed: (){_dialogueResult(MyDialogueAction.no);}, child: new Text('No')),
        new FlatButton(onPressed: (){_dialogueResult(MyDialogueAction.maybe);}, child: new Text('Maybe')),
        
      ],
    );
    showDialog(context: context, child: dialog);  //child is deprecated but the code works fine
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog Demo'),
      ),
      body: new Center(
        child: new Container(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value) {
                  _onChange(value);
                },
              ),
              new RaisedButton(
                onPressed: () {
                  _showAlert(_text);
                },
                child: new Text('Alert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
