import 'package:flutter/material.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/bodydetailsscreen.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildappbar(context),
      body: BodyDetailsScreen(product: product,),
    );
  }

  AppBar buildappbar(BuildContext context){
    return  AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset('icons/back.svg',color: Colors.white,), onPressed:(){Navigator.pop(context);} ),
      actions: [
        IconButton(icon: SvgPicture.asset('icons/search.svg'), onPressed: (){}),
        IconButton(icon: SvgPicture.asset('icons/cart.svg'), onPressed: (){}),
        SizedBox(width: defaultPadding/2,)
      ],
    );
  }
}
