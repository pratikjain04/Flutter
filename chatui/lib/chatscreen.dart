import 'package:flutter/material.dart';
import 'package:chatui/chatmessage.dart';


class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

final TextEditingController textController = new TextEditingController();

//we need a list of messages, because user can enter multiple messages
final List<Message> messages = <Message>[];
class ChatScreenState extends State<ChatScreen> {


//This method is called when we hit send button. SO, we need to clear the message box and also display the message on the screen
  //by adding the message to the <message>list and displaying the complete list
  void _handleSubmitted(String text) {
    textController.clear();
    Message message = new Message(
        text: text); //passing the text received in this method
    //we create an object of the class Message and this accepts a text parameter because we made a constructor with text parameter


    //now we need to update our state by setState() to rebuild our method
    setState(() {
      messages.insert(0, message);
    });
  }





  Widget _textComposerWidget() {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: new InputDecoration.collapsed(
                  hintText: 'Send a message',
                ),
                //.collapsed means it will occupy all the space
                controller: textController,
                onSubmitted: _handleSubmitted,
              ),
            ),
            //Flexible occupies the complete screen, whereas collapsed occupies the remaining horizontal width of the screen(check documentation)

            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: (() {
                    _handleSubmitted(textController.text);
                  })
              ),
            ),


          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
        children: <Widget>[
          new Flexible(
              child: new ListView.builder(
                padding: new EdgeInsets.all(8.0),
                //we want the latest message to be at the bottom most part of the app, therefore we reverse the order like this:
                reverse: true,
                itemBuilder: (_, int index) => messages[index],
                // the _ means the BuildContext
                itemCount: messages.length,
              )
          ),
          new Divider(height: 1.0,),
          //distance between the text field and the list increases
          new Container(
            decoration: new BoxDecoration(
              color: Theme
                  .of(context)
                  .cardColor,

            ),
            child: _textComposerWidget(),
          )
        ],

    );
  }
}