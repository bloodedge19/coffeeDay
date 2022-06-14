import 'package:flutter/material.dart';
import 'package:flutter_project/constant.dart';
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
        appBarTheme: AppBarTheme(color: primaryColor,elevation: 0),
        scaffoldBackgroundColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: HomeScreen(),
    );
  }
}




