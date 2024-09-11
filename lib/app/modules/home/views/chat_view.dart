import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextWidget(
            'Chat',
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Color(0XffE86A53),
            fontFamily: "RedHatDisplay",
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: ListView.separated(
              itemBuilder: (context, index) => Stack(
                children: [

                  Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            children: [
                              Container(
                                width: 64.h,
                                height: 64.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "${controller.owners[index].image}"),
                                        fit: BoxFit.fitHeight)),
                              ),

                              SizeBoxWidget(                                width: 10.w,
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 10.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(

                                      children: [

                                        TextWidget(
                                          '${controller.owners[index].nameOwner}',
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color:controller.owners[index].connected==false? Color(0XffFFFFFF):Color(0xFFE86A53) ,
                                          fontFamily: "Satoshi",
                                        ),
                                        TextWidget(
                                          '${controller.owners[index].descriptiveName}',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0XffCCCCCC),
                                          fontFamily: "Satoshi",
                                        ),
                                      ],
                                    ),
                                    SizeBoxWidget(width: 20.w,),
                                    ImageWidget("assets/image/Vector.png",width: 16.w,height: 16.w,fit: BoxFit.contain,color: controller.owners[index].connected==false? Color(0XffFFFFFF):Color(0xFF3F82FF)),
                                    SizeBoxWidget(width: 5.w,),

                                    TextWidget(
                                      'VERIFIED',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      color: controller.owners[index].connected==false? Color(0XffFFFFFF):Color(0xFF3F82FF),
                                      fontFamily: "Satoshi",
                                    ),

                                  ],


                                ),
                              ),
                            ],
                          ),
                        ),
                        width: double.infinity,
                        height: 90.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color:controller.owners[index].connected==false?Color(0XffE86A53) :Color(0XffF8F8F8) ,

                            ),
                      ),
                  controller.owners[index].connected==false?     Positioned(
                    right: 5.w,
                    top: 3.h,
                    child: Container(width: 16.w,height: 16.h,decoration: BoxDecoration(
                      color: Color(0XffFF2B2B),
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.w,color: Colors.white)
                    ),),
                  ):Container(),
                  Positioned(bottom: 5.h,
                    right: 30.w,
                    child: TextWidget(
                      '${controller.owners[index].chatHistory}',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0XffCCCCCC),
                      fontFamily: "Satoshi",
                    ),
                  ),

                ],
              ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 15.h,
                  ),
              itemCount: controller.owners.length),
        ));
  }
}
