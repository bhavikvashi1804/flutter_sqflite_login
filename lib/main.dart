import 'package:flutter/material.dart';
import 'package:flutter_sqflite/pages/home_page.dart';
import 'package:flutter_sqflite/pages/login/login_page.dart';

void main() => runApp(MyApp());


final routes = {
  '/loging':(BuildContext context)=>new LoginPage(),
  '/home':(BuildContext context)=>new HomePage(),
  '/':(BuildContext context)=>new LoginPage(),
  // '/' use for any other cases
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SQFlite',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.indigoAccent
      ),
      routes: routes,
    );
  }
}
