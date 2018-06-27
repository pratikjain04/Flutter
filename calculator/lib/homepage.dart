import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{


  /*
  Backend of any Application is written inside the Class which extends the State of the class extending the StatefulWidget
  Create Functions for your backend according to the app requirement.
  setState((){}) is used to update the state, so any changes that need to be tracked properly should be written inside the serState(){}
  */

  var num1,num2, result; //we define it as variables as the user input can be double, float, int, anything

  final TextEditingController t1 = new TextEditingController(text: '0');
  final TextEditingController t2 = new TextEditingController(text: '0');

  void add(){
    
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1+num2;
    });
  }


  void sub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1-num2;
    });
  }

  void prod(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1*num2;
    });
  }

  void div(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      if(num2==0)
        result = 'Don\'t divide by Zero';
      else
        result = num1/num2;
    });

  }

  void clear(){
    setState(() {
      t1.text = ' ';
      t2.text = ' ';
    });
  }




@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Calculator'),),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Output: $result',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: 'Enter Number 1',
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: 'Enter Number 1',
              ),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text('+'),
                    color: Colors.greenAccent,
                    onPressed: (){add();},
                    ),
                new Padding(padding: const EdgeInsets.only(left: 10.0)),

                new MaterialButton(
                  child: new Text('-'),
                  color: Colors.greenAccent,
                  onPressed: (){sub();},
                ),

              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(

                  child: new Text('*'),
                  color: Colors.greenAccent,
                  onPressed: (){prod();},
                ),
                new Padding(padding: const EdgeInsets.only(left: 10.0)),

                new MaterialButton(
                  child: new Text('/'),
                  color: Colors.greenAccent,
                  onPressed: (){div();},
                ),

              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text('Clear'),
                  color: Colors.greenAccent,
                  onPressed: (){clear();},
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}