import 'package:flutter/material.dart';
import 'package:flutter_project/screens/home/components/coffeeDetail.dart';
import 'category.dart';
import 'package:flutter/services.dart';
import 'CoffeeCard.dart';
import '/models/Coffee.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          // child: Categories(),
        ),
        Expanded(child:
        Padding(
          padding: EdgeInsets.fromLTRB(16,16,16,16),
          child: GridView.builder(
            itemCount: coffeeList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 16,
                childAspectRatio: 2,
                crossAxisCount: 1),
            itemBuilder: (context, index){
              return GestureDetector(
                child: Coffeecard(coffeeList_: coffeeList[index],
              ),
                    onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>coffeeDetail(coffeeList_: coffeeList[index],)));},
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}






