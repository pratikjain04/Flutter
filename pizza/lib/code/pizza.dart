

//This class will help us hold the state in memory as we pass on from one page to the other
class pizza {
//We are making it static because we want to access it from outside  the instance of the class, which means objects of other class can
//also update and use the values of "sizes"
  static List<String> sizes = <String>['Small','Medium','Large'];
//List of Sizes of pizza available

  String size = sizes.elementAt(0);     //Initial Size

  Map<String, bool> toppings = new Map<String,bool>();
  //Map of toppings, which are all false initially
  //<String, bool> because we need to see if the named topping is selected or not (true or false)

  pizza() {
    toppings.putIfAbsent('Pepperoni', () => false);
    toppings.putIfAbsent('Sausage', () => false);
    toppings.putIfAbsent('Cheese', () => false);
    toppings.putIfAbsent('Pineapple', () => false);
    toppings.putIfAbsent('Onions', () => false);
    toppings.putIfAbsent('Tomato', () => false);
    toppings.putIfAbsent('Olives', () => false);
    toppings.putIfAbsent('Peppers', () => false);
    toppings.putIfAbsent('Cheese Burst', () => false);
    toppings.putIfAbsent('Mushrooms', () => false);
    toppings.putIfAbsent('Sardines', () => false);
    }


}