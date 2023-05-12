





import 'package:bel_gomlaa/fashion-page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final String price;


  Product({
  required this.name,
  required this.image,
  required this.price,


  });
}
List<Product> items = [
  Product(
    image: 'assets/images/dress1.png',
    name: 'Printed Dress',
    price: 'EGP 250',

  ),
  Product(
    image: 'assets/images/cardigan1.jpg',
    name: 'Cardigan',
    price: 'EGP 200',

  ),
  Product(
    image: 'assets/images/polo.png',
    name: 'Polo Shirt',
    price: 'EGP 250',

  ),
  Product(
    image: 'assets/images/menshoes.jpg',
    name: 'Shoes',
    price: 'EGP 250',

  ),
  Product(
    image: 'assets/images/kidsdress.jpg',
    name: ' Pink Dress ',
    price: 'EGP 150',

  ),
  Product(
    image: 'assets/images/boyshirt.jpg',
    name: 'Navy T-shirt',
    price: 'EGP 150',
  ),
  Product(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
  Product(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
  Product(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
];
Widget buildCard(
    Product,
    ) =>
    Container(
      width: 190,
      child: Column(
        children: [
          Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              )
          ),

          SizedBox(height: 4),
          Text(
            Product.name,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Center(
            child: Row(

              children: [
                Text(
                  Product.price,
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

class Electronics{
  final String name;
  final String image;
  final String price;


  Electronics({
    required this.name,
    required this.image,
    required this.price,


  });
}
List<Electronics> electronics = [
Electronics(
image: 'assets/images/headphones.jpeg',
name: 'Headphones',
price: 'EGP ',

),
Electronics(
image: 'assets/images/laptop.jpg',
name: 'Laptop',
price: 'EGP ',

),
Electronics(
image: 'assets/images/mobile.jpeg',
name: 'Iphone 14',
price: 'EGP ',

),
Electronics(
image: 'assets/images/tv.jpeg',
name: 'TV',
price: 'EGP ',

),];
Widget product(
    Electronics,
    ) =>
    Container(
      width: 190,
      child: Column(
        children: [
          Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Electronics.image,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          SizedBox(height: 4),
          Text(
            Electronics.name,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Text(
            Electronics.price,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
        ],
      ),
    );
