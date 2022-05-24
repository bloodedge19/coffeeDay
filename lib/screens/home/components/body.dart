import 'package:flutter/material.dart';
import 'category.dart';
import 'package:flutter/services.dart';
import 'CoffeeCard.dart';
import '/models/Coffee.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(),
        Expanded(child:
        Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: coffeeList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 16,
                childAspectRatio: 2,
                crossAxisCount: 1),
            itemBuilder: (context, index) => Coffeecard(coffeeList_: coffeeList[index],
             ),
            ),
          ),
        ),
      ],
    );
  }
}





