import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:drawerroutes/newpage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.indigo),
      home: new HomePage(),
      routes: <String, WidgetBuilder>{

          '/a': (BuildContext context) => new NewPage("Page 1"),
          '/b':  (BuildContext context) => new NewPage('Page 2'),
        },
    );
      
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text('Drawer and Routes')),
        elevation: defaultTargetPlatform == TargetPlatform.android? 8.0: 0.0,
        //shadow below the AppBar(only for Android)
        //5.0 for Android and 0.0 for iOS because it does not support
        ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //To add space for User Profile Minor Details
            new UserAccountsDrawerHeader(
                accountName: new Text('Pratik Jain'),
                accountEmail: new Text('pratikjain0411@gmail.com'),
              //we can add any picture instead of CircleAvatar
              currentAccountPicture: new CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.purple: Colors.cyan,
              //here is one problem for iOS devices, that the top area of iphoneX is not covered properly so we need to modify it manually
               //to cure that problem we use TargetPlatform thing to specify things for iOS and Android differently

                  child: new Text('P'),
              ),
              otherAccountsPictures: <Widget>[    //adds a small pic on the top right of the drawer just like Gmail
                new CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.purple: Colors.cyan,
                  child: new Text('J'),
                ),
              ],
            ),
            new ListTile(
              title: new Text('Page 1'),
              trailing: new Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pop();      //to close the drawer which was remaining open
                Navigator.of(context).pushNamed('/a');
                },
            ),
            new ListTile(
              title: new Text('Page 2'),
              trailing: new Icon(Icons.arrow_downward),
              onTap: (){
                Navigator.of(context).pop();      //this closes the drawer internally and then the next line takes you to the route
                Navigator.of(context).pushNamed('/b');
                },
            ),
            new Divider(),    //adds a blank line
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
              onTap: (){Navigator.of(context).pop();},
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text('HomePage' , style: new TextStyle(fontSize: 40.0),),

        ),
      ),
    );
  }
}

