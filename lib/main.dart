import 'package:first_flutter_app/app_screens/second_sceen.dart';
import "package:flutter/material.dart";

void main() {
  //The app param holds all the widgets you will use
  runApp(MyFlutterApp());
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
          body: Fragment(),
          appBar: AppBar(
            title: Text("My First Flutter App"),
            backgroundColor: Colors.blue,
          ),
        ));

    return widget;
  }
}

class Fragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget widget = Material(
        child: Center(
            child: Text(
      generateDateToday(),
      style: TextStyle(fontSize: 24.0),
      textDirection: TextDirection.ltr,
    )));
    return widget;
  }

  String generateDateToday() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    String dateToday = date.toString();
    return dateToday;
  }
}
