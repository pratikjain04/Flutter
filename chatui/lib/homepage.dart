import 'package:flutter/material.dart';
import 'package:chatui/chatscreen.dart';


class Home extends StatefulWidget{

  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<Home>{

  void delete() {
    textController.clear();
    setState(() {
      messages.removeRange(0, messages.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: new AppBar(
      title: new Text('Chat App'),
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.delete), onPressed: (){delete();})
      ],
    ),

      // body: new ChatScreen(), //we wont do this because we want to display the list of messsages first and then the input text field,
      // so we use a column and then use the respective methods that we need
      body: new ChatScreen(),);
  }
}
