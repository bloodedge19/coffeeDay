import 'package:flutter/material.dart';
import 'package:flutter_project/models/Coffee.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_project/screens/home/home_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Day',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xffFFF5EC),elevation: 0),
        scaffoldBackgroundColor: Color(0xffFFF5EC),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomeScreen(),
    );
  }
}




