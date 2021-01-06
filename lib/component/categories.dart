import 'package:flutter/material.dart';

import '../constant.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> list = ['Hand bag','Jewellery','Footwear','Dresses'];
  int selectitem = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25.0,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) =>buildlist(index ),
          itemCount: list.length,
        ) ,
      ),
    );
  }
  Widget buildlist(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectitem=index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(list[index] ,style: TextStyle(color: selectitem == index ? kTextcolor : kTextlight,
                fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.only(top: defaultPadding/4),
              width: 30,
              height: 2,
              color: selectitem == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
