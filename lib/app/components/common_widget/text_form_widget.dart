import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldWidget extends StatelessWidget {
TextEditingController? controller;
double ?radius;
String?hint;
String ?validatorText;
double?vertical;
double?horizontal;
TextFormFieldWidget(this.controller,this.hint,this.radius,this.validatorText,this.vertical,this.horizontal);
  @override
  Widget build(BuildContext context) {
    return                         TextFormField(
      controller: controller,
    cursorColor: Color(0xFFcccccc),

    validator: (value){
        if(value!.isEmpty){
          return 'Please enter $validatorText ';
        }
        return null;
    },
      style: TextStyle(
        fontSize: 16.sp
      ),
    decoration: InputDecoration(

      focusedBorder: OutlineInputBorder(

        borderSide: BorderSide(color: Color(0xFFcccccc)),
        borderRadius: BorderRadius.circular(10.r),

      ),
      errorStyle: TextStyle(
          fontSize: 16.sp

      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFcccccc)),
        borderRadius: BorderRadius.circular(10.r), // Optional: adjust the corner radius
      ),
    border: OutlineInputBorder(

borderRadius: BorderRadius.circular(radius!), // Custom border radius

),

contentPadding: EdgeInsets.symmetric(
vertical: vertical!,
horizontal: horizontal!,
), // Padding inside the text field
hintText: '${hint}',
),
);
}
}
