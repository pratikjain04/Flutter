import 'package:flutter/material.dart';
import 'package:loginapp/settings.dart';
import 'package:loginapp/login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget{
  _MyAppState createState() => new _MyAppState();
}



class _MyAppState extends State<MyApp>{

  String _title = 'Login App';
  Widget _screen;       //Widget declared
  login _login;         //object of login declared
  settings _settings;   //object of settings declared
  bool _authenticated;

  _MyAppState(){      //constructor of the class
    _login = new login(onSubmit: (){onSubmit();} );
    //onSubmit() call back function is called so as to what to do when the login form is submitted
    //created an instance of the login class, and since we used getters there, we can get the text
    //by accessing the data members of the class by its object
    _settings = new settings();     //instance of settings created (object definiiton)
    _screen = _login;
    _authenticated = false;
  }

  void onSubmit(){    //  We finally make our OnSubmit callback function
    print('Username: ' + _login.username + ',' + ' Password: ' + _login.password);
    //HERE WE DO THE AUTHENTICATION PART OF THE USER
    //ALWAYS USE DATABASES TO AUTHENTICATE, AND THIS CODE BELOW IS JUST FOR DEMONSTRATION!!!!!!!!

    if(_login.username == 'user' && _login.password=='password')    //only gets authenticated if entered credentials are these.
      _setAuthenticated(true);
    else
      _setAuthenticated(false);


  }

  void _goHome(){
    print('Go Home');
    setState(() {             //We are setting the state of the screen
      if(_authenticated == true){   //We want to change the state on depending whether or not the user is authenticated
        _screen = _settings;
        }
      else{
        _screen = _login;
        }

    });
  }
  void _logout(){
    print ('Log out');
    _setAuthenticated(false);
  }

  //This is the heart of the login app
  //This is going to set State
  void _setAuthenticated(bool auth){
    setState(() {             //We are setting the state of the screen
    if(auth == true){   //We want to change the state on depending whether or not the user is authenticated
      _screen = _settings;
      _title = 'Welcome';
      _authenticated = true;    //This is important because if we don't update the _authenticated, when we click on home,
                                //we get back to the login screen because the _authenticated was false, not was not updated with the state
    }
    else{
      _screen = _login;
      _title = 'Login';
      _authenticated = false;
    }

    });
  }

  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.home), onPressed: (){_goHome();}),
            //always make a function for working with onPressed like goHome and Logout
            //code the functionality you want inside the functions
            new IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){_logout();}),
          ],
        ),
        body: _screen,
      ),
    );
  }

}