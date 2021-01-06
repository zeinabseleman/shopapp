import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/component/addtochart.dart';
import 'package:shopapp/component/colorandsize.dart';
import 'package:shopapp/component/colordot.dart';
import 'package:shopapp/component/coutcard.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyDetailsScreen extends StatelessWidget {
  final Product product;
  const BodyDetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height*0.4),
                  padding: EdgeInsets.only(top: size.height*0.12 ,right: defaultPadding,left:defaultPadding ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product,),
                      SizedBox(height: defaultPadding/2,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                        child: Text('${product.description}',style: TextStyle(height: 1.5),),
                      ),
                      SizedBox(height: defaultPadding/2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CountCard(),
                          Container(
                            padding: EdgeInsets.all(8),
                            width: 32,
                            height: 32,
                             child: SvgPicture.asset('icons/heart.svg'),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: defaultPadding/2,),
                     AddToChart(product: product,)
                    ],
                  ),
                ),
                Padding(
                    padding:EdgeInsets.symmetric(horizontal: defaultPadding),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aristocratic Hand Bag',style: TextStyle(color: Colors.white),),
                      Text(product.title,style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                     SizedBox(height: defaultPadding,),
                      Row(
                        children: [
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(text:'Price\n'),
                              TextSpan(text: '\$${product.price}',style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white,fontWeight: FontWeight.bold))
                            ]
                          )),
                          SizedBox(width: defaultPadding,),
                          Expanded(child: Hero(tag: '${product.id}',child: Image.asset(product.image,fit: BoxFit.fill,))),
                        ],
                      )
                    ],
                  ),

                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
