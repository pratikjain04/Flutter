import 'package:flutter/material.dart';
import 'dart:async';      //for Future Class
import 'package:http/http.dart' as http;    //we need to use this file directly as a object
import 'dart:convert';      //for   JSON.decode()


void main() => runApp(new MaterialApp(
  home: new HomePage(),
));

class HomePage extends StatefulWidget{
  //we are dealing real-data and we will be updating real data in
  //app, so Stateful is used and not Stateless

  @override
  HomePageState createState()=> new HomePageState();
}

class HomePageState extends State<HomePage>{


  final String url = "https://swapi.co/api/people";
  List data;

  @override
  void initState() {      //Its the initial state of this widget and this function will be called first when the widget is built

    super.initState();  //super.initState() use is still unknown to me
    this.getJsonData();
  }
  //Future is used to represent a potential value which can be changed in future
  //Suppose, you request a data from the server, it will take a few second for the data to start retrieving
  //For this few seconds we need to define this Future class

  //async: asynchronous function which means something will happen only after a specified task is finished
  Future<String> getJsonData() async{

    var response = await http.get(
      //always encode the URL to delete the spaces in the URL if there might be one
       Uri.encodeFull(url),
      //we want to only receive json response, no XML or any other stuff,therefore:
      headers: {"Application": "application/json"}
    );


    //we can print the json data received here,
    //It will only print after the data is received because we have made the method asynchronous
    print(response.body);

  //Whenever we receive the data, we always want to rebuild our apps state, and also update it

    setState(() {
      var convertJsontoData = JSON.decode(response.body);
    //when we see the api's json data, we see that all the data is present inside "results" array,

      data = convertJsontoData['results'];


    });

    return "Success";     //To return a String to the Future Class
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: new AppBar(
         title: Center(child: new Text('Retreive JSON via HTTP GET')),
       ),
      body: new ListView.builder(
          itemCount: data==null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index){
            return new Container(
              child: new Center(
                child: new Column(      //because we need multiple elements
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                     new Card(
                       child: new Container(
                        
                         padding: const EdgeInsets.all(20.0),
                         child: new Column(
                           //we pass the index and the parameter that we want to show
                           children: <Widget>[
                             new Text('Name: ' + data[index]['name']),
                             new Text('Height: ' + data[index]['height']),
                             new Text('Mass: ' + data[index]['mass']),
                             new Text('Hair Colour: ' + data[index]['hair_color']),
                             new Text('Gender: ' + data[index]['gender']),

                           ],
                         ),
                       ),
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }


}