import 'package:flutter/material.dart';
import 'package:loginapp/settings2.dart';
void main() => runApp(new MyApp());


class MyApp extends StatefulWidget {
  _MyAppState createState() => new _MyAppState();

}

void _logout()
{
  print('Logged Out');
}

void _home()
{
  print('Go home');
}

class _MyAppState extends State<MyApp>
{ String _title = 'Login App';
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          backgroundColor: Colors.lightGreen,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: (){_home();},),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: (){_logout();},)


          ],
        ),
        body: new settings(),
      ),
      );

  }
}