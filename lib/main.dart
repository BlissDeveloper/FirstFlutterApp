import "package:flutter/material.dart";

void main() {
  //The app param holds all the widgets you will use
  runApp(
    MyFlutterApp()
  );
}

//To lessen the messy code, we need to have a child class of the StatelessWidget class

class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp WIdget
    //Need a new instance of it
    //Whole screen is the Material widget

    Widget widget = MaterialApp(
        title: "My First Flutter App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //Scaffold enabled an appbar
          appBar: AppBar(
            title: Text("My First Flutter App"),
            backgroundColor: Colors.blue,
          ),
          body: Material(
            color: Colors.lightBlue,
            child: Center(
                child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 40.0),
                )),
          ),
        ));

    return widget;
  }
}
