import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';

class FilterChipWidget extends StatefulWidget {
  final String label;
bool? selected;
   FilterChipWidget({required this.label,this.selected});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.h,
      child: FilterChip(
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.only(left: 10.w,right: 10.w), // Remove default label padding
        shape: RoundedRectangleBorder(
          side: BorderSide(

            color: Color(0XFFCCCCCC), // Border color
            width: 1.w, // Border width
          ),
          borderRadius: BorderRadius.circular(100.r), // Border radius
        ),
        selected: widget.selected!,
        showCheckmark: false,
        selectedColor: Color(0XFFE86A53),
        label:TextWidget(widget.label,fontSize: 16.sp,fontWeight: FontWeight.w600,fontFamily: "RedHatDisplay",color:  widget.selected!?Color(0XFFFFFFFF):Color(0XFFE86A53),),
        onSelected: (bool selected) {
          setState(() {
            widget.selected=selected;

          });

print(this.widget.selected);
          // Handle chip selection logic here

        },
      ),
    );
  }
}
