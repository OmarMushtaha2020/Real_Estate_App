import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
TextEditingController? controller;
double ?radius;
double?borderSide;
String?hint;
String ?validatorText;
TextFormFieldWidget(this.controller,this.borderSide,this.hint,this.radius,this.validatorText);
  @override
  Widget build(BuildContext context) {
    return                         TextFormField(
      controller: controller,
    validator: (value){
        if(value!.isEmpty){
          return 'Please enter $validatorText ';
        }
        return null;
    },
    decoration: InputDecoration(

    border: OutlineInputBorder(

borderRadius: BorderRadius.circular(radius!), // Custom border radius
borderSide: BorderSide(
color: Colors.blue, // Border color
width: borderSide!, // Border width
),
),

contentPadding: EdgeInsets.symmetric(
vertical: 15,
horizontal: 10,
), // Padding inside the text field
hintText: '${hint}',
),
);
}
}
