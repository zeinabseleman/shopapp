import 'package:flutter/material.dart';

import '../constant.dart';
class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({Key key, this.color, this.isSelected=false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding/4,right:defaultPadding/2 ),
      padding: EdgeInsets.all(2.5),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)
      ),
      child: DecoratedBox(decoration: BoxDecoration(color: color,shape: BoxShape.circle )),
    );
  }
}
