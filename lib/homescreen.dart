import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/constant.dart';

import 'component/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
       leading: IconButton(icon:SvgPicture.asset('icons/back.svg') , onPressed: (){}),
        actions: [
          IconButton(icon: SvgPicture.asset('icons/search.svg',color: kTextcolor,) , onPressed: (){}),
          IconButton(icon: SvgPicture.asset('icons/cart.svg',color: kTextcolor,) , onPressed: (){})
        ],
      ),
      body: Body(),
    );
  }
}
