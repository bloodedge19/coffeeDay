import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home/components/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: SizedBox(
        height: kToolbarHeight,
        child: Image.asset("assets/logo/Logo.png"),
      ),
    );
  }
}