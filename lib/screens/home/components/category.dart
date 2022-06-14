// import 'package:flutter/material.dart';
// import 'package:flutter_project/models/Coffee.dart';
// import 'package:flutter_project/screens/home/components/CoffeeCard.dart';
// import 'package:flutter_project/constant.dart';
//
// class Categories extends StatefulWidget {
//   @override
//   State<Categories> createState() => _CategoriesState();
// }
//
// class _CategoriesState extends State<Categories> {
//   List<String> categories = ['All', 'Light Coffee', 'Medium Coffee', 'Strong Coffee'];
//   int selected = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 24),
//       child: SizedBox(
//         height: kToolbarHeight-16,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (context, index) =>  buildCategoryCoffee(index),
//         ),
//       ),
//     );
//   }
//
//   Widget buildCategoryCoffee(int index) {
//     return GestureDetector(
//       onTap: (){
//         setState((){
//           selected = index;
//         });
//       },
//       child: Container(
//         alignment: Alignment.center,
//         margin: EdgeInsets.symmetric(horizontal: 4.0),
//         padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(32),
//           color:
//           selected == index? selectedColor: secondaryColor,
//         ),
//         child: Text(
//           categories[index],
//           style:
//           selected == index?TextStyle(fontWeight: FontWeight.w600, color: textColor, fontSize: 16):
//           TextStyle(fontWeight: FontWeight.w600, color: blackColor, fontSize: 16),
//         ),
//       ),
//     );
//   }
// }