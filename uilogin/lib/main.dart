import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  AnimationController
      _iconAnimationController; //AnimationController helps in creating Animations, its an inbuilt class
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this, //this means the current context
      duration: new Duration(
          milliseconds:
              800), //duration of animation can be given in many formats
    );
    _iconAnimation = new CurvedAnimation(
        parent:
            _iconAnimationController, //the object that you create of AnimationController class is the parent always
        curve: Curves.easeIn); //Curves has many different kinds of animation
    //adding a listener is compulsory who will listen to all the changes due to the animation and update the state accordingly

    _iconAnimation.addListener(() => this.setState(() {}));
    //here 'this' refers to the context and setState() saves the state according to the current context

    //now we need to tell the animation controller to do the animation by calling forward
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Stack(
        //Stack is used when we want to put one layout on top of another layout
        //Here we want to put the background image first and then the Logo of the app

        fit: StackFit
            .expand, //expands each layout of the stack and covers the full screen
        children: <Widget>[
          new Image(
            image: new AssetImage('images/girl.jpg'),
            fit: BoxFit.cover, //covers the entire screen
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
                //the _iconAnimation.value lies between 0 to 1. We don't need such small image therefore we multiply by 100
              ),
              new Form(
                child: new Theme(               //because the previous theme is dark so we cannot see the forms
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                      )
                    )
                  ),
                  child: new Container(
                    padding: const EdgeInsets.all(42.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //we add Column here because we need to add multiple widgets
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(labelText: 'Enter Email'),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(labelText: 'Enter Password'),
                          keyboardType: TextInputType.text,
                          obscureText: true,      //for password hiding
                        ),
                        new Padding(padding: const EdgeInsets.only(top: 35.0)), //spacing between Form and Button
                        new MaterialButton(
                            height: 40.0,
                            minWidth: 100.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Text('Login'),
                            onPressed: ()=>{},
                            splashColor: Colors.blueAccent,     //color of the button when pressed
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
