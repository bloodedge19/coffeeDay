import 'package:flutter/material.dart';

class Coffee {
  final int id;
  final String name, category, description, imageUrl;
  final List<String> ingredients;

  Coffee(
      {
        required this.id,
        required this.category,
        required this.ingredients,
        required this.name,
        required this.description,
        required this.imageUrl
      }
    );
}

List<Coffee> coffeeList = [
  Coffee(
    id: 0,
    name: "Cafe Latte",
    category: "Light",
    ingredients: ["Espresso 45ml", "Milk 300ml"],
    description: "As the most popular coffee drink out there, the latte is comprised of a shot of espresso and steamed milk with just a touch of foam",
    imageUrl: "assets/images/Home_Latte.png",
  ),
  Coffee(
    id: 1,
    name: "Cappuccino",
    category: "Light",
    ingredients: ["Espresso 45ml", "Milk 240ml"],
    description: "Cappuccino is a latte made with more foam than steamed milk, often with a sprinkle of cocoa powder or cinnamon on top.",
    imageUrl: "assets/images/Home_Cappucino.png",
  ),
  Coffee(
    id: 2,
    name: "Mocha",
    category: "Medium",
    ingredients: ["Espresso 45ml", "Milk 150ml", "Choco Powder"],
    description: "The mocha is a chocolate espresso drink with steamed milk and foam. For all you chocolate lovers out there, you’ll fall in love with a mocha.",
    imageUrl: "assets/images/Home_Mocha.png",
  ),
  Coffee(
    id: 3,
    name: "Macchiato",
    category: "Strong",
    ingredients: ["Espresso 45ml", "Milk 60ml"],
    description:  "The macchiato is another espresso-based drink that has a small amount of foam on top. It’s the happy medium between a cappuccino and a doppio.",
    imageUrl: "assets/images/Home_Macchiato.png",
  ),
  Coffee(
    id: 4,
    name: "Americano",
    category: "Strong",
    ingredients: ["Espresso 45ml", "Water 180ml"],
    description: "With a similar flavor to black coffee, the americano consists of an espresso shot diluted in hot water.",
    imageUrl: "assets/images/Home_Americano.png",
  ),
];