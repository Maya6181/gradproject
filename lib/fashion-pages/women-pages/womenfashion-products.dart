





import 'package:bel_gomlaa/fashion-pages/fashion-page.dart';

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
  Product(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
  Product(
    image: 'assets/images/kidsdress.jpg',
    name: ' Pink Dress ',
    price: 'EGP 150',

  ),
  Product(
    image: 'assets/images/kidsdress.jpg',
    name: ' Pink Dress ',
    price: 'EGP 150',
  ),
  Product(
    image: 'assets/images/polo.png',
    name: 'Polo Shirt',
    price: 'EGP 250',
  ),
  Product(
    image: 'assets/images/polo.png',
    name: 'Polo Shirt',
    price: 'EGP 250',

  ),
  Product(
    image: 'assets/images/polo.png',
    name: 'Polo Shirt',
    price: 'EGP 250',

  ),
  Product(
    image: 'assets/images/polo.png',
    name: 'Polo Shirt',
    price: 'EGP 250',

  ),

];



class Shoes {
  final String name;
  final String image;
  final String price;

  Shoes({
    required this.name,
    required this.image,
    required this.price,

  });
}
List<Shoes> shoesItems = [
  Shoes(
    name: 'Shoes',
    image: 'assets/images/shoes1.jpg',
    price: 'EGP 200',

  ),
  Shoes(
    name: 'Shoes',
    image: 'assets/images/shoes1.jpg',
    price: 'EGP 200',

  ),
  Shoes(
    name: 'Shoes',
    image: 'assets/images/shoes1.jpg',
    price: 'EGP 200',

  ),
  Shoes(
    name: 'Shoes',
    image: 'assets/images/shoes1.jpg',
    price: 'EGP 200',

  ),
  Shoes(
    name: 'Shoes',
    image: 'assets/images/shoes1.jpg',
    price: 'EGP 200',
  ),
  Shoes(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
  Shoes(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
  Shoes(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
  Shoes(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
  Shoes(
    image: 'assets/images/shoes2.jpg',
    name: 'Nude Heels',
    price: 'EGP 250',
  ),
];

class Accessories {
  final String name;
  final String image;
  final String price;

  Accessories({
    required this.name,
    required this.image,
    required this.price,

  });
}
List<Accessories> accessoryItems = [
  Accessories(
    name: 'Rings',
    image: 'assets/images/rings.jpg',
    price: 'EGP 60',

  ),
  Accessories(
    name: 'Rings',
    image: 'assets/images/rings.jpg',
    price: 'EGP 60',

  ),
  Accessories(
    name: 'Rings',
    image: 'assets/images/rings.jpg',
    price: 'EGP 60',

  ),
  Accessories(
    name: 'Rings',
    image: 'assets/images/rings.jpg',
    price: 'EGP 60',

  ),
  Accessories(
    name: 'Rings',
    image: 'assets/images/rings.jpg',
    price: 'EGP 60',

  ),
  Accessories(
    name: 'Sunglasses',
    image: 'assets/images/sunglasses.jpg',
    price: 'EGP 100',

  ),
  Accessories(
    name: 'Sunglasses',
    image: 'assets/images/sunglasses.jpg',
    price: 'EGP 100',

  ),
  Accessories(
    name: 'Sunglasses',
    image: 'assets/images/sunglasses.jpg',
    price: 'EGP 100',

  ),
  Accessories(
    name: 'Sunglasses',
    image: 'assets/images/sunglasses.jpg',
    price: 'EGP 100',

  ),
  Accessories(
    name: 'Sunglasses',
    image: 'assets/images/sunglasses.jpg',
    price: 'EGP 100',

  ),
];
class Bags {
  final String name;
  final String image;
  final String price;

  Bags({
    required this.name,
    required this.image,
    required this.price,

  });
}
List<Bags> bagitems = [
Bags(
name: 'Bag',
image: 'assets/images/womenbag.jpg',
price: 'EGP 60',
),
  Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),
  Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),
  Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),
  Bags(
    name: 'Bag',
    image: 'assets/images/womenbag.jpg',
    price: 'EGP 60',
  ),
];