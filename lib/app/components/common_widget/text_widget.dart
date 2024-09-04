import 'dart:ui';

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String? text;
  double? fontSize;
  String? fontFamily;
  TextAlign? textAlign;
  FontWeight ?fontWeight;
Color?color;
  TextWidget(this.text, {this.fontSize, this.fontFamily, this.textAlign,this.color,this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",

      style: TextStyle(fontSize: fontSize, fontFamily: fontFamily,color:color,decoration: TextDecoration.none,fontWeight: fontWeight ),
      textAlign: textAlign,
    );
  }
}
