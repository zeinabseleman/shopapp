import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopapp/product.dart';
import '../constant.dart';

class AddToChart extends StatelessWidget {
  final Product product;

  const AddToChart({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: defaultPadding),
            width: 58,
            height: 50,
            decoration: BoxDecoration(border: Border.all(color: product.color),
                borderRadius: BorderRadius.circular(18)
            ),
            child: IconButton(icon: SvgPicture.asset('icons/cart.svg',color: product.color,), onPressed: (){}),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(onPressed: (){},
                child: Text('buy now'.toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                color: product.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
