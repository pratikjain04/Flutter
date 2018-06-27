import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({
    Key key,
    @required
        this.onSubmit, //onSubmit is a void callback function, that is we mean that we are expecting onSubmit to get called
    //somewhere else in some other code
  }) : super(key: key);

  final VoidCallback onSubmit;
  static final TextEditingController _user = new TextEditingController();
  //A TextEditingController helps in managing the Text Field in Flutter
  static final TextEditingController _pass = new TextEditingController();

  //Creating getters for username and password
  String get username => _user.text;
  String get password => _pass.text;

  @override //From here we build our main UI of the login page
  Widget build(BuildContext context) {
    return new Column(
      //Here we create the Login form
      children: <Widget>[
        //Textfield handles the text fields of the flutter apps, It extracts the text out of the TextControllers
        //TextEditingControllers basically hold the data in a variable, which we can grab using the getters
        //InputDecoration helps in giving information on the kind of input that is expected from the User
        new TextField(
          controller: _user,
          decoration: new InputDecoration(hintText: 'Enter a Username'),
        ),
        new TextField(
          controller: _pass,
          decoration: new InputDecoration(hintText: 'Enter a Password'),
          obscureText: true,
        ),
        //obscure Text hides the password written in the password field
        new RaisedButton(
            child: new Text('Submit'),
            onPressed:
                onSubmit) //We want to call onSubmit as a callback function
      ],
    );
  }
}
