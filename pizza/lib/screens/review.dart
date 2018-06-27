/* Review file is about the review page where the customers will review their order
  We also need to have a final Buy Button along with the other information from the
  previous pages, like topping, size, etc.
  We need to take the existing order and render them out for view!
 */

/*
When we create the instance of review.dart, we are going to take the existing order
out of the constructor, and add it into our _pizzaOrder variable, and then generate a list
which we are going to present the user in the ListView

 */
import 'package:flutter/material.dart';
import 'package:pizza/code/pizza.dart';

class Review extends StatelessWidget{
  pizza _pizzaOrder;
  List<String> _list = new List<String>();

  Review({order: null}){
    _pizzaOrder = order;

    _list.add('Size: ${_pizzaOrder.size}');
    _list.add(' ');
    _list.add('Toppings: ');

    //forEach for mapping
    _pizzaOrder.toppings.forEach((String name, bool value){
      if(value) _list.add(name);    //if value is not false, then add the name to the list

    });

  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Review Pizza Order'),

        ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Review Your Order:  ',style: new TextStyle(fontWeight: FontWeight.bold),),

            /*
            If the list view goes out of the visible area, the material you are working with, it will display a
            yellow ugly black bar, To get rid of it we use "Expanded"
            It will Expand as far as you need it to go, really.
             */
            new Expanded(
                child: new ListView.builder(
                    shrinkWrap: true,   //to avoid any bounding issues
                    itemCount: _list.length,

                    itemBuilder: (BuildContext context, int index){
                      return new Text(_list.elementAt(index));

                      //itemBuilder will go through every element in the list and then print out
                    }

                )
            )

            ],
        ),
      ),
    );
  }

}