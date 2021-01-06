import 'package:flutter/material.dart';
import 'package:shopapp/component/colordot.dart';
import 'package:shopapp/product.dart';

import '../constant.dart';

class ColorAndSize extends StatelessWidget {
  final Product product;

  const ColorAndSize({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(color: Color(0xFF356C95),isSelected: true,),
                  ColorDot(color: Color(0xFFF8C078),),
                  ColorDot(color: Color(0xFFA29898),)
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(
              style: TextStyle(color: kTextcolor),
              children: [
                TextSpan(text: 'Size\n'),
                TextSpan(text: '${product.size} cm' ,style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold))
              ]
          )),
        )
      ],
    );
  }
}
