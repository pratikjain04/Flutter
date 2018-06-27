import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Flutter Tutorial',
    home: new TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return new Scaffold(
      appBar: new AppBar(          //Everything inside AppBar will be at the top, inside the appbar like the icons below
        leading: new IconButton(
          icon: new Icon(Icons.menu),     //creates a sandwitch button
          tooltip: 'Navigation menu',
          onPressed: null,                //does not respond to clicks
        ),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',            //creates a search icon
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: new Center(
        child: new Text('Hello, world!'),
      ),
      floatingActionButton: new FloatingActionButton(  //adds a circular button
        tooltip: 'Add', // used by assistive technologies
        child: new Icon(Icons.add), //gives an add icon in the centre of the button
        onPressed: null,
      ),
    );
  }
}