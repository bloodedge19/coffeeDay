import 'package:flutter/material.dart';
import 'package:flutter_project/models/Coffee.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['All', 'Strong Coffee', 'Medium Coffee', 'Light Coffee'];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: SizedBox(
        height: kToolbarHeight,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategoryCoffee(index),
        ),
      ),
    );
  }

  Widget buildCategoryCoffee(int index) {
    return GestureDetector(
      onTap: (){
        setState((){
          selected = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20.0),
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:
          selected == index? Color(0xffC3954E): Color(0xffEEE5DD),
        ),
        child: Text(
          categories[index],
          style:
          selected == index?TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFFFFFF), fontSize: 16):
          TextStyle(fontWeight: FontWeight.bold, color: Color(0xff212325), fontSize: 16),
        ),
      ),
    );
  }
}