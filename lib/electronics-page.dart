
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElectronicsPage extends StatefulWidget{
  _ElectronicsageState createState() =>  _ElectronicsageState();
}

class  _ElectronicsageState  extends State<ElectronicsPage> {
  int currentIndex =0;

  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(top: 60, left: 30, right: 30),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          // Do something when search icon button is pressed.
                        },
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Color(0xff58006D)),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.mic),
                        onPressed: () {
                          // Do something when voice icon button is pressed.
                        },
                      ),
                    ],
                  ),
                ),

                Column(
                    children: [
                      BottomNavigationBar(

                        currentIndex: currentIndex,
                        onTap: (index) => setState(()  => currentIndex = index),
                        backgroundColor: Colors.transparent,
                        selectedItemColor: Colors.purple,
                        unselectedItemColor: Colors.grey,
                        showSelectedLabels: true,
                        showUnselectedLabels: true,
                        items: [
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: 'Home',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person),
                            label: 'Profile',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.favorite),
                            label: 'Wishlist',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.bookmark),
                            label: 'Saved Items',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.shopping_cart),
                            label: 'Cart',
                          ),
                        ],

                      ),
                    ]
                )
              ],
            )
        )
    );

  }
}