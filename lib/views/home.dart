import 'package:flutter/material.dart';
import './categories.dart';
import './featured_products.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(children: [
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "What would you like to eat ?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Stack(children: [
                  IconButton(
                    icon: Icon(Icons.notifications_none, size: 30),
                    onPressed: () {},
                  ),
                  Positioned(
                    top: 10,
                    right: 12,
                    child: Container(
                        height: 10,
                        width: 11,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ])
              ],
            )),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey[300],
                      blurRadius: 4,
                      offset: Offset(1, 1))
                ]),
                child: ListTile(
                  leading: Icon(Icons.search, color: Colors.red),
                  title: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter meal or resturant name")),
                  trailing: Icon(
                    Icons.filter_list,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Categories(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Featured", style: TextStyle(fontSize: 15)),
            ),
            SizedBox(height: 5),
            Featured(),
            // SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Popular Food", style: TextStyle(fontSize: 15)),
            ),
            //SizedBox(height: 5),
            Stack(children: [
              Container(
                child: Image.asset("images/steak.jpg", width: 350),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Icon(Icons.favorite, color: Colors.red),
                          height: 35,
                          width: 35,
                        ),
                        Container(
                          // color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Text("4.7",
                                          style: TextStyle(fontSize: 10)),
                                      Icon(Icons.star,
                                          color: Colors.red, size: 10),
                                    ],
                                  )),
                            ],
                          ),
                          height: 25,
                          width: 35,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 90, bottom: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Steak" + "\n" + "meat"),
                        Text("\n\$12.99 ")
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ]),
        ),
        bottomNavigationBar: Container(
            height: 40,
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 25,
                        color: Colors.yellow[900],
                      ),
                      Icon(Icons.favorite, size: 25, color: Colors.yellow[900]),
                      Icon(Icons.shopping_bag,
                          size: 25, color: Colors.yellow[900]),
                      Icon(Icons.home, size: 25, color: Colors.yellow[900]),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "account",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text("favorites", style: TextStyle(fontSize: 10)),
                        Text("shopping bag", style: TextStyle(fontSize: 10)),
                        Text("home", style: TextStyle(fontSize: 10))
                      ]),
                ],
              ),
            )),
        bottomNavigationBar: Container(
            height: 40,
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 25,
                        color: Colors.yellow[900],
                      ),
                      Icon(Icons.favorite, size: 25, color: Colors.yellow[900]),
                      Icon(Icons.shopping_bag,
                          size: 25, color: Colors.yellow[900]),
                      Icon(Icons.home, size: 25, color: Colors.yellow[900]),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "account",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text("favorites", style: TextStyle(fontSize: 10)),
                        Text("shopping bag", style: TextStyle(fontSize: 10)),
                        Text("home", style: TextStyle(fontSize: 10))
                      ]),
                ],
              ),
            )));
  }
}
