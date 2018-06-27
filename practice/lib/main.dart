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

class _MyAppState extends State<MyApp> {

  List<String> data = new List<String>();

  @override
  void initState() {

    setState(() {
      data.add('Length');
      data.add('Area');
      data.add('Energy');
      data.add('Time');
      data.add('Speed');
      data.add('Currency');
    });

  }




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: new Text('Unit Measurement'),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                child: new Container(
                    padding: new EdgeInsets.all(5.0),
                    color: Colors.lightGreenAccent,
                    child: new Column(
                      children: <Widget>[
                        new Row(

                          children: <Widget>[
                            new Icon(Icons.border_color),
                            Center(child: new Text('Length')),
                          ],

                        ),

                        new Row(

                          children: <Widget>[
                            new Icon(Icons.branding_watermark),
                            Center(child: new Text('Area')),
                          ],

                        ),
                        new Row(

                          children: <Widget>[
                            new Icon(Icons.signal_cellular_4_bar),
                            Center(child: new Text('Energy')),
                          ],

                        ),
                        new Row(

                          children: <Widget>[
                            new Icon(Icons.timer),
                            Center(child: new Text('Time')),
                          ],

                        ),
                        new Row(

                          children: <Widget>[
                            new Icon(Icons.directions_run),
                            Center(child: new Text('Speed')),
                          ],

                        ),
                        new Row(

                          children: <Widget>[
                            new Icon(Icons.euro_symbol),
                            Center(child: new Text('Currency')),
                          ],

                        ),
                      ],
                    )


                ),
              );
            }
        ),
      ),


    );
  }

}
