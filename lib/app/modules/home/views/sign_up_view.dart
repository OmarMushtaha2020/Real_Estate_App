import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/CustomCheckbox.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/sign_up_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends GetView<SignUpController> {
   SignUpView({Key? key}) : super(key: key);
  var form=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,  // Allow the view to resize when the keyboard appears
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/imageBuilding.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Form(
              key: form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    height: 600.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.r),
                        topLeft: Radius.circular(25.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SizedBox(
                                width: 60.w,
                                child: Divider(
                                  thickness: 3.h,
                                  color: Color(0xFFCDCFD1),
                                ),
                              ),
                            ),
                            ImageWidget(
                              "assets/image/stars.png",
                              width: 38.w,
                              height: 38.w,
                              fit: BoxFit.contain,
                            ),
                            SizeBoxWidget(height: 20.h),
                            TextWidget(
                              "Create your free account",
                              fontSize: 16.sp,
                              fontFamily: "Satoshi",
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFE86A53),
                              textAlign: TextAlign.start,
                            ),
                            SizeBoxWidget(height: 5.h),
                            TextWidget(
                              "Let's start your educational journey together, where every \nstep forward is a step towards a brighter future!",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Satoshi",

                              color: Color(0xFF999999),
                              textAlign: TextAlign.start,
                            ),
                            SizeBoxWidget(height: 20.h), // Added for spacing consistency

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  "Full Name *",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,

                                  fontFamily: "Satoshi",
                                  color: Color(0xFFE86A53),
                                  textAlign: TextAlign.start,
                                ),
                                SizeBoxWidget(height: 8.h), // Added for spacing consistency
                                TextFormFieldWidget(controller.fullName,"Full Name",10.r,"Full Name",10.h,10.w,)

                              ],
                            ),

                            SizeBoxWidget(height: 20.h), // Added for spacing consistency
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  "Email Address *",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,

                                  fontFamily: "Satoshi",
                                  color: Color(0xFFE86A53),
                                  textAlign: TextAlign.start,
                                ),
                                SizeBoxWidget(height: 8.h), // Added for spacing consistency
                                TextFormFieldWidget(controller.email,"Email Address",10.r,"Email Address",10.h,10.w,)

                              ],
                            ),
                            SizeBoxWidget(height: 20.h), // Added for spacing consistency

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  "Password *",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,

                                  fontFamily: "Satoshi",
                                  color: Color(0xFFE86A53),
                                  textAlign: TextAlign.start,
                                ),
                                SizeBoxWidget(height: 8.h), // Added for spacing consistency
                                TextFormFieldWidget(controller.password,"Password",10.r,"Password",10.h,10.w,)

                              ],
                            ),
                            SizeBoxWidget(height: 20.h), // Added for spacing consistency

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  "Confirm Password *",
                                  fontSize: 14.sp,
                                  fontFamily: "Satoshi",fontWeight: FontWeight.w500,
                                  color: Color(0xFFE86A53),
                                  textAlign: TextAlign.start,
                                ),
                                SizeBoxWidget(height: 8.h), // Added for spacing consistency
                                TextFormFieldWidget(controller.confirmPassword,"Confirm Password",10.r,"Confirm Password",10.h,10.w,)

                              ],
                            ),
                            SizeBoxWidget(height: 15.h,),
                            GestureDetector(
                              onTap: () {
                                if(form.currentState!.validate()){
Get.offAndToNamed("email_verification");
                                }
                              },
                              child: Container(
                                height: 53.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color:
                                  Color(0xFFE86A53)

                                  ,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                child: Center(
                                  child: TextWidget(
                                    "Sign Up",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "RedHatDisplay",
                                    color: Color(0xFFFFFFFF),

                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: 64.h,left: 20.w),
            child: GestureDetector(onTap: (){
              Get.offAndToNamed("/registration_screen");
            },child: CircleAvatar(radius: 20.h,backgroundColor: Color(0xFFFFFFFF).withOpacity(0.50),child: Icon(Icons.arrow_back,color: Colors.white,weight: 20.w,size: 20.w,),)),
          ),
        ],
      ),
    );
  }
}
