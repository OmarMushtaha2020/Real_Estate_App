import 'dart:ui';

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String? text;
  double? fontSize;
  String? fontFamily;
  TextAlign? textAlign;
  FontWeight ?fontWeight;
  double ?height;
Color?color;
  TextWidget(this.text, {this.fontSize, this.fontFamily, this.textAlign,this.color,this.fontWeight,this.height});

  @override
  Widget build(BuildContext context) {
    return Text(

      text ?? "",

      style: TextStyle(fontSize: fontSize, fontFamily: fontFamily,color:color,decoration: TextDecoration.none,fontWeight: fontWeight,height: height ),
      textAlign: textAlign,
    );
  }
}
