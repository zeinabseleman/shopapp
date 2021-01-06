
import 'package:flutter/material.dart';

class Product{
  final String image , title , description ;
  final int price , size , id;
  final Color color;

  Product({this.image, this.title, this.description, this.price, this.size, this.id, this.color});
}

List<Product> products = [
  Product(
    id: 1,
    title: 'Office Code',
    image:'images/bag1.png',
    color: Color(0xFF3D82AE),
    description: 'Specializing in soft pastel shades, these bags will give you a high-end look without being too much With a variety of leather goods ranging from cross-body bags to statement clutches, you are sure to find the perfect purse for you',
    size: 12,
    price: 243
  ),
  Product(
      id: 2,
      title: 'Belt Bag',
      image:'images/bag2.png',
      color: Color(0xFFD3A984),
      description: 'Specializing in soft pastel shades, these bags will give you a high-end look without being too muchWith a variety of leather goods ranging from cross-body bags to statement clutches, you are sure to find the perfect purse for you',


      size: 8,
      price: 250
  ),
  Product(
      id: 3,
      title: 'Hang Top',
      image:'images/bag4.png',
      color: Color(0xFF757575),
      description: 'Specializing in soft pastel shades, these bags will give you a high-end look without being too muchWith a variety of leather goods ranging from cross-body bags to statement clutches, you are sure to find the perfect purse for you',
      price: 243
  ),
  Product(
      id: 4,
      title: 'Old Fashon',
      image:'images/bag5.png',
      color: Color(0xFFFFCC80),
      description: 'Specializing in soft pastel shades, these bags will give you a high-end look without being too muchWith a variety of leather goods ranging from cross-body bags to statement clutches, you are sure to find the perfect purse for you',
      size: 8,
      price: 500
  ),
  Product(
      id: 5,
      title: 'Office Code',
      image:'images/bag6.png',
      color: Color(0xFFDA6769),
      description: 'Specializing in soft pastel shades, these bags will give you a high-end look without being too muchWith a variety of leather goods ranging from cross-body bags to statement clutches, you are sure to find the perfect purse for you',
      size: 10,
      price: 243
  ),
  Product(
      id: 6,
      title: 'Office Code',
      image:'images/bag7.png',
      color: Color(0xFF757575),
      description: 'Specializing in soft pastel shades, these bags will give you a high-end look without being too muchWith a variety of leather goods ranging from cross-body bags to statement clutches, you are sure to find the perfect purse for you',
      size: 12,
      price: 243
  )
];