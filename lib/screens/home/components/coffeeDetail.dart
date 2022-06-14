import 'package:flutter/material.dart';
import 'package:flutter_project/models/Coffee.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_project/constant.dart';

class coffeeDetail extends StatelessWidget {
  final Coffee coffeeList_;
  const coffeeDetail({Key? key, required this.coffeeList_}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int len = coffeeList_.ingredients.length;
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: <Widget>[
            Expanded(child: Padding(
              padding: EdgeInsets.fromLTRB(24,24,8,24),
              child: Column(children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    coffeeList_.name,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.lora(textStyle: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 50)
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 5),
                Image.asset(coffeeList_.imageUrl,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                SizedBox(height: 5),
                Text(
                  coffeeList_.description,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.lato(textStyle: TextStyle(
                      color: textColor,
                      fontSize: 20)
                  ),
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Ingredients:",
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.lato(textStyle: TextStyle(
                      color: selectedColor,
                      fontSize: 25)
                  ),
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                ),
                for (var i = 0; i < len; i++)
                  Text(
                      coffeeList_.ingredients[i],
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.lato(textStyle: TextStyle(
                          color: textColor,
                          fontSize: 30)
                      ),
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis)
              ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

