import 'package:flutter/material.dart';
import '../models/category.dart';

class Categories extends StatelessWidget {
  List<Category> categoriesList = [
    Category(name: "meat", image: "images/meat.jpg"),
    Category(name: "salad", image: "images/salad.jpg"),
    Category(name: "fish", image: "images/fish.jpg"),
    Category(name: "sweet", image: "images/sweet.jpg"),
    Category(name: "soup", image: "images/soup.jpg"),
    Category(name: "olives", image: "images/olives.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      decoration:
                          BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.yellow[100],
                            offset: Offset(4, 6),
                            blurRadius: 20),
                      ]),
                      child: Image.asset(
                        categoriesList[index].image,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text(categoriesList[index].name,
                        style: TextStyle(fontSize: 11))
                  ],
                ),
              );
            }));
  }
}
