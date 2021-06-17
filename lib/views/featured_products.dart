import 'package:flutter/material.dart';
import '../models/products.dart';

class Featured extends StatelessWidget {
  List<Product> productsList = [
    Product(
        name: "soup",
        image: "images/soup.jpg",
        rating: 2.5,
        price: 12.5,
        vendor: "bad food",
        wishlist: false),
    Product(
        name: "meat",
        image: "images/meat.jpg",
        rating: 4.7,
        price: 45.5,
        vendor: "good food",
        wishlist: true),
    Product(
        name: "fish",
        image: "images/fish.jpg",
        rating: 4.1,
        price: 22.5,
        vendor: "good food",
        wishlist: true)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.yellow[100],
                            offset: Offset(4, 6),
                            blurRadius: 20),
                      ]),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          productsList[index].image,
                          width: 130,
                          height: 130,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(productsList[index].name,
                                style: TextStyle(fontSize: 11)),
                          ),
                          productsList[index].wishlist
                              ? Icon(
                                  Icons.favorite,
                                  size: 15,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  size: 15,
                                  color: Colors.red,
                                )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                children: [
                                  Text(productsList[index].rating.toString(),
                                      style: TextStyle(fontSize: 11)),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                ],
                              )),
                          Text("\$ ${productsList[index].price}",
                              style: TextStyle(fontSize: 11)),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
