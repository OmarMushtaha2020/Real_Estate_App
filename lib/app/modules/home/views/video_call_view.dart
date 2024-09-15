import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/video_call_controller.dart';

class VideoCallView extends GetView<VideoCallController> {
  const VideoCallView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Padding(
        padding:  EdgeInsets.only(top: 40.h,left: 20.h,right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.offNamed("/Layout");
                  },
                  child: Container(height: 36.w,width: 36.w,decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF).withOpacity(0.50),
                      shape: BoxShape.circle
                  ),child: Icon(Icons.arrow_back_rounded,size: 20.w,color: Colors.black,)),
                ),
                Spacer(),
                Container(clipBehavior: Clip.antiAlias,width: 120.w,height: 140.h,decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10.r),
                  color: Colors.white,
                ),child: Image.network("https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-600nw-1703979295.jpg",fit: BoxFit.cover,),)
              ],
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Container(
                width: double.infinity,
                height: 76.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  color: Color(0xFF999999).withOpacity(0.25),
                ),
                child: Row( // Use Row or Column based on your design needs
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(controller.image.length, (index) => Container(
                    width: 68.w, // Adjust size as needed
                    height: 68.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageWidget("${controller.image[index]}",height: 34.h,width: 38.h,fit: BoxFit.contain,),
                      ],
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      color: index==0?Color(0xFFFF2B2B):Colors.white, // Example color for each circle
                    ),
                  )),
                ),
              ),
            ),

          ],
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image/imageBuildingOne.png"),fit: BoxFit.cover),
      ),
    );
  }
}
