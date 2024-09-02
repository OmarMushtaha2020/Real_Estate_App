
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String ?url;
  double?height;
  double?width;
  BoxFit ?fit;

  ImageWidget(this.url,{this.height,this.width,this.fit});
  @override
  Widget build(BuildContext context) {
    return                       Image.asset(url??"",height: height,width:width ,fit: fit,);
  }
}
