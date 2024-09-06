import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/CustomCheckbox.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/login_controller.dart';



class LoginView extends GetView<LoginController> {
   LoginView({Key? key}) : super(key: key);
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
                fit: BoxFit.cover,
              ),
            ),
            child: Form(
              key: form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: double.infinity,
                    height: 515.h,
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
                                width: 60.h,
                                child: Divider(
                                  thickness: 3.h,
                                  color: Color(0xFFCDCFD1),
                                ),
                              ),
                            ),
                            ImageWidget(
                              "assets/image/stars.png",
                              width: 38.w,
                              height: 38.h,
                              fit: BoxFit.contain,
                            ),
                            SizeBoxWidget(height: 20.h),
                            TextWidget(
                              "Get Started",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Satoshi",
                              color: Color(0xFFE86A53),
                              textAlign: TextAlign.start,
                            ),
                            SizeBoxWidget(height: 5.h),
                            TextWidget(
                              "By joining us, you will gain access to cutting-edge \nresources, expert guidance, etc. Unlock your potential\nnow!",
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
                                  "Email",
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
                                  "Password",
                                  fontSize: 14.sp,
                                  fontFamily: "Satoshi",
                                  fontWeight: FontWeight.w500,

                                  color: Color(0xFFE86A53),
                                  textAlign: TextAlign.start,
                                ),
                                SizeBoxWidget(height: 8.h), // Added for spacing consistency

                                TextFormFieldWidget(controller.password,"Password",10.r,"Password",10.h,10.w),
                              ],
                            ),
                        SizedBox(height: 15.h,),
                        Row(
              children: [
                CustomCheckbox(

                  size: 1.w, // Adjust the size here
                  value: false,
                  onChanged: (bool? newValue) {
                        // Handle checkbox state change
                  },
                ),
                TextWidget(
                  "Remember me",
                  fontSize: 12.sp,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF999999),
                  textAlign: TextAlign.start,
                ),
                Spacer(),
                TextWidget(
                  "Forgot password?",
                  fontSize: 12.sp,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFD30000),
                  textAlign: TextAlign.start,
                ),

              ],
                        ),
                            SizedBox(height: 15.h,),
                            GestureDetector(
                              onTap: () {
                                if(form.currentState!.validate()){

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
                                    "Login",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
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
