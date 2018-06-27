import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver
    //WidgetsBindingObsserver helps us in observing the app life cycle in real-time
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Application Life Cycle'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[new Text('Add Widgets Here')],
        ),
      ),
    );
  }

  @override
  void initState(){
    print('***init State');
    super.initState();
    WidgetsBinding.instance.addObserver(this); //this returns the current object
  }

  @override
  void dispose() {
    print('***Dispose***');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
  print('***state = ${state.toString()}');
  switch(state){
    case AppLifecycleState.inactive:
      print('***Inactive');
      break;
    case AppLifecycleState.paused:
      print('***Paused');
      break;
    case AppLifecycleState.resumed:
      print('***Resumed');
      break;
    case AppLifecycleState.suspending:
      print('***Suspended');
      break;
  }

  }








}


