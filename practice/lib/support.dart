/* import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  home: new MyApp(),
));


class MyApp extends StatefulWidget{

  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp>{

  List<bool> _data = new List<bool>();    //This is the backend of the data being stored in the List,
  //<bool> can be replaced by any userdefined class too and we can add anything
  //People,Dogs,pets,etc.

  @override
  void initState() {
    setState(() {
      for (int i = 0; i < 10; i++) {
        _data.add(false);
      }
    });
  }

  void onChanged(bool value,int index){
    setState(() {

      _data[index] = value;  //Setting the value of data[index] with the one which was changed below
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:  new Text('List View'),
      ),
      body: new ListView.builder(

        //We give some details like the number of items and such so that the list has equal spacing between each Items in the List
          itemCount: _data.length,
          itemBuilder: (BuildContext context, int index){   //We can put any kind of Widget in here
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(5.0),
                child: new Column(
                  children: <Widget>[
                    new Text('This is item $index'),
                    new CheckboxListTile(
                      value: _data[index],
                      controlAffinity: ListTileControlAffinity.leading,   //Brings checkbox to the left
                      title: new Text('Click me Item $index'),
                      onChanged: (bool value){onChanged(value, index);},
                    )
                  ],
                ),
              ),
            );
          }

      ),    //ListView.builder is the standard form for building the ListView

    );


  }


}

*/