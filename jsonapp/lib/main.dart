import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(new MaterialApp(
  theme: new ThemeData(
    primarySwatch: Colors.teal,
  ),

    home: new HomePage()),
);

class HomePage extends StatefulWidget{

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  List data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text('Json App')),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
              //DefaultAssetBundle is something inbuilt functionality which helps in handling json files and
            // .of(context) means the current context and .loadString(<filepath>) loads the data of the json file as string
              future: DefaultAssetBundle
              .of(context)
              .loadString('loadjson/person.json'),

            builder: (context, snapshot){
                //decode json
              var mydata = JSON.decode(snapshot.data.toString());

              return new ListView.builder(
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                        child: Center(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              new Text("Name: " + mydata[index]['name']),
                              new Text("Age: " + mydata[index]['age']),
                              new Text("Height: " + mydata[index]['height']),
                              new Text("Gender: " + mydata[index]['gender']),
                              new Text("Hair Colour: " + mydata[index]['hair_color']),
                            ],
                          ),
                        ),
                    ); //Card is like a material widget
                  },
                  itemCount: mydata == null ? 0 : mydata.length ,
              );
            }
          ),    //FutureBuilder is used in loading our local json file


        ),
      ),
    );
  }

}