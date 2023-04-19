
import 'package:bel_gomlaa/electronics-page.dart';
import 'package:bel_gomlaa/fashion-page.dart';
import 'package:bel_gomlaa/toys-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'books-page.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Category list',
            style: TextStyle(
               color: Color(0xff58006D),
            ),

          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
        color: Color(0xff58006D),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
    color: Color(0xff58006D),
              onPressed: () {},
            ),
          ],
        ),
            body: SingleChildScrollView(
            child: Column(
                children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff58006D)),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
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
                      hintStyle: TextStyle(color: Colors.grey),
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

              Padding(padding: EdgeInsets.all(8)),
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FashionPage()));
                  print("fashion");
                },
                child: Container(
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 25, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/fashion.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Fashion',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ElectronicsPage()));
                  print("electronics");
                },
                child: Container(
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/electronics.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Electronics',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ToysPage()));
                  print("toys");
                },
                child: Container(
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/toys1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Toys',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BooksPage()));
                  print("books");
                },
                child: Container(
                  height: 150,
                  width: 350,
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/books.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Books',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),

          BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => setState(() => currentIndex = index),
            backgroundColor: Colors.transparent,
            selectedItemColor: Color(0xff58006D),
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
            ],
          ),
        ]
            )
            )
            );

  }
}
