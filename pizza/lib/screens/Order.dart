import 'package:flutter/material.dart';
import 'package:pizza/code/pizza.dart';
import 'package:pizza/screens/review.dart';

class Order extends StatefulWidget{

  @override
  _State createState() => new _State();
}

class _State extends State<Order>{

  pizza _pizzaOrder = new pizza();


  void _setSize(String value){
    setState(() {
      _pizzaOrder.size = value;
    });
  }


  void _setTopping(int index, bool value){
    setState(() {
      String key = _pizzaOrder.toppings.keys.elementAt(index);
      _pizzaOrder.toppings[key] = value;      //updating true and false
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Order Pizza'),
      ),
      body: new Center(
        child: new Container(
          child: new Padding(
            padding: const EdgeInsets.all(32.0),
            child: new Column(
             children: <Widget>[
               new DropdownButton<String>(
                    value: _pizzaOrder.size,
                   items: pizza.sizes.map((String value){
                    return DropdownMenuItem(
                      value: value,
                      child: new Row(
                        children: <Widget>[
                          new Icon(Icons.local_pizza),
                          new Text('Size: $value')
                          //The pizzaOrder Size is saved in value , therefore we display value which is iterating through the list right now
                        ],
                      ),
                    );
               }).toList(),     //items expect a List, therefore we can't just map the data and leave it
                   onChanged: (String value){_setSize(value);}
               ),
               new Expanded(
                 child: new ListView.builder(
                     shrinkWrap: true,
                      itemCount: _pizzaOrder.toppings.length,
                     itemBuilder: (BuildContext context, int index){
                       return new CheckboxListTile(
                           controlAffinity: ListTileControlAffinity.leading,    //puts checkbox on the left
                           title: new Text(_pizzaOrder.toppings.keys.elementAt(index)),   //we only need the keys , i.e., the toppings and not the true and false values
                           value: _pizzaOrder.toppings.values.elementAt(index),       //Receives only true or false
                           onChanged: (bool value){_setTopping(index, value);}
                       );
                     },
                 ),
               ),
               new RaisedButton(
                   child: new Text('Continue'),
                   onPressed: (){Navigator.push(
                       context,
                       new MaterialPageRoute(
                       builder: (BuildContext context) => new Review(order: _pizzaOrder,)
                   ));},   //we need to build the route manually now
               )
             ],
            ),
          ),
        ),
      ),
    );
  }
}