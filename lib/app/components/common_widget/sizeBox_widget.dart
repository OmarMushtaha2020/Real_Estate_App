import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  double?  height;
  double?  width;
Widget ?widget ;
  SizeBoxWidget({this.widget,this.height,this.width});
  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: height??0,width: width??0,child:widget??Container() ,);
  }
}
