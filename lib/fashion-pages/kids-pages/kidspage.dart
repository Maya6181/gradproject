
import 'package:bel_gomlaa/cart-pages/cart-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/boys-page.dart';
import 'package:bel_gomlaa/fashion-pages/kids-pages/girls-page.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-accessories.dart';
import 'package:bel_gomlaa/fashion-pages/men-pages/men-shoes.dart';
import 'package:bel_gomlaa/home-page/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../profile.dart';
import '../../wishlist-page.dart';
import 'kids-products.dart';






class KidsPage extends StatefulWidget {
  _KidsPageState createState() => _KidsPageState();
}


class _KidsPageState extends State<KidsPage> {
  int currentIndex = 0;



  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Kids',
            style: TextStyle(color: Color(0xff58006D)),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Color(0xff58006D),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()));
                print("cart page");

              },
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
                    margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        children: [
                          Text("Girls",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.black)

                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GirlsPage()));
                              print("girls");
                            },
                            child: Text("See All",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xff58006D))
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 10),


                  Container(
                    height: 350,

                    child: ListView.separated(
                      padding: EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => buildCard(kidsgirlsproducts[index]),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                        children: [
                          Text("Boys",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,

                                  color: Colors.black
                              )

                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BoysPage()));
                              print("boys");
                            },

                            child: Text("See All",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,

                                    color: Color(0xff58006D))
                            ),
                          )
                        ]
                    ),
                  ),
                  SizedBox(height: 10),


                  Container(
                    height: 350,

                    child: ListView.separated(
                      padding: EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, _ )  => SizedBox(width: 12) ,
                      itemBuilder: (context, index) => buildCard(kidsboysproducts[index]),
                    ),
                  ),



                          Builder(
                            builder: (context) {
                              return BottomNavigationBar(
                                currentIndex: currentIndex,
                                onTap: (index) {
                                  setState(() => currentIndex = index);
                                  switch (index) {
                                    case 0:
                                    // Navigate to the home page
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                                      break;
                                    case 1:
                                    // Navigate to the profile page
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                                      break;
                                    case 2:
                                    // Navigate to the wishlist page
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistPage()));
                                      break;
                                  }
                                },
                                backgroundColor: Colors.white,
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

                                ],
                              );
                            }
                          ),

                        ]
                        )

                  )

  );




  }
  Widget buildCard(
      Kidsproducts ,
      ) => Container(
    width: 190,

    child: Column(
      children: [
        Expanded(
            child:
            AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Kidsproducts.image,
                  fit: BoxFit.cover,
                ),
              ),
            )
        ),
        SizedBox(height: 5),
        Text(
          Kidsproducts.name,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Center(
          child: Row(

            children: [
              Text(
                Kidsproducts.price,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.shopping_cart),
              ),

            ],
          ),
        ),
      ],
    ),
  );
}

