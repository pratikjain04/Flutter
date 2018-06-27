import 'package:flutter/material.dart';

class Fourth extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Fourth'),),
      body: new Padding(
        padding: const EdgeInsets.all(30.0),
        child: new Container(

          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('This is the Fourth Page, Hard Coded by me'),
                new RaisedButton(
                    child: new Text('Back'),
                    onPressed: () {
                  Navigator.of(context).pop();    //pop navigates to the previous screen which rendered the fourth screen
                }),
              new RaisedButton(
              child: new Text('Home'),
              onPressed: () {
              //Navigator.of(context).pushNamed('/Home');

                /* By this line above way we can go to the Home screen again but there is an arrow sign
                on the top left corner which "<--" when clicked takes us back to the fourth page.
                To avoid this we change and update the code a bit. */
              Navigator.of(context).pushNamedAndRemoveUntil('/Home', (Route<dynamic> route)=> false);

              /* Route of the type dynamic which is actually the route variable is false.
              So, this means that we are going to keep going until we get to the home screen
              It is going to push through the whole route list, until it gets ot Home, and then remove everything else out
              */
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}