
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String ?url;
  double?height;
  double?width;
  BoxFit ?fit;
Color ?color;
  ImageWidget(this.url,{this.height,this.width,this.fit,this.color});
  @override
  Widget build(BuildContext context) {
    return                       Image.asset(url??"",height: height,width:width ,fit: fit,color: color,);
  }
}
