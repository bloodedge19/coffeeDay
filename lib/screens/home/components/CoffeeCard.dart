import 'package:flutter/material.dart';
import 'package:flutter_project/models/Coffee.dart';
import 'package:google_fonts/google_fonts.dart';

class Coffeecard extends StatelessWidget {
  final Coffee coffeeList_;
  const Coffeecard({super.key, required this.coffeeList_});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff212325),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: <Widget>[
            Expanded(child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                Text(
                  coffeeList_.name,
                  style: GoogleFonts.ibmPlexSans(textStyle: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 20)
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Text(
                  coffeeList_.description,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.lato(textStyle: TextStyle(
                      color: Color(0xff7A7B7C),
                      fontSize: 15)
                  ),
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                )
              ],
              ),
            ),
            ),
            SizedBox(width: 5),
            AspectRatio(aspectRatio:0.9,
                child: Image.asset(coffeeList_.imageUrl,
                  fit: BoxFit.cover,
                  alignment: Alignment.centerRight,
                )
            )
          ],
        ),
      ),
    );
  }
}