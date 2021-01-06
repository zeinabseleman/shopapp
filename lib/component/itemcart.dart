

import 'package:flutter/material.dart';

import '../constant.dart';
import '../product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({Key key, this.product, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Hero(tag: '${product.id}',child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding/4),
            child: Text(product.title,style: TextStyle(color: kTextlight),),
          ),
          Text('\$${product.price}'
            , style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
