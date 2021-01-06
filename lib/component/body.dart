import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/Detailsscreen.dart';
import 'package:shopapp/component/categories.dart';
import 'package:shopapp/component/itemcart.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text('Women' , style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),),
        ),
        Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    crossAxisSpacing: defaultPadding,
                    mainAxisSpacing: defaultPadding
                  ),
                  itemBuilder: (context , index)=>ItemCard(
                    product: products[index],
                    press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(product: products[index],)));
                    },
                  )
              ),
            )
        )
      ],
    );
  }
}


