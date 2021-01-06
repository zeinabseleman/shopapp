import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/constant.dart';

class CountCard extends StatefulWidget {
  @override
  _CountCardState createState() => _CountCardState();
}

class _CountCardState extends State<CountCard> {
  int itemcount = 1;

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        buildcountitem(icon: Icons.remove , press: (){
          if(itemcount>1) {
          setState(() {
            itemcount-- ;
          });
          }
         }
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
          child: Text(itemcount.toString().padLeft(2 , '0'),
            style: Theme.of(context).textTheme.headline6,),
        ),
        buildcountitem(icon: Icons.add , press: (){
            setState(() {
              itemcount++ ;
            });

        }
        ),
      ],
    );
  }
  SizedBox buildcountitem({IconData icon , Function press}){
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13)
        ),
        child: Icon(icon),
        onPressed: press,
      ),
    );
  }
}
