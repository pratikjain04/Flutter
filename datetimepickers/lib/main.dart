import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  DateTime _date = new DateTime.now();      //Initializes _date with current date
  TimeOfDay _time = new TimeOfDay.now();    //Initializes _time with current time

  Future<Null> _selectDate(BuildContext context) async{
    //We use BuildContext here because we need to build a new context for this date-time thing

  final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: new DateTime(1999),
      lastDate: new DateTime(2021),
  );

  if(picked!=null && picked!=_date){

    setState(() {
      _date = picked;
    });
    print('Date Selected: ${_date.toString()}');      //Print the updated date
  }

  }

  Future<Null> _selectTime(BuildContext context) async{

    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _time,
    );

    if(picked!=null && picked!=_time){

      setState(() {
        _time = picked;
      });
      print('Time Selected: ${_time.toString()}');    //Print the updated time
    }
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Date-Time Picker'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Date Selected:: ${_date.toString()} '),
            new RaisedButton(
                child: new Text('Selecte Date : '),
                onPressed: (){_selectDate(context);}
                
                ),
            new Padding(
              padding: const EdgeInsets.all(18.0),
              child: new Text('Time Selected: ${_time.toString()}'),
            ),
            new RaisedButton(
                child: new Text('Selected Time: '),
                onPressed: (){_selectTime(context);}
                ),
          ],
        ),
      ),
    );
  }
}
