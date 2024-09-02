import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/components/common_widget/CustomCheckbox.dart';
import 'package:real_estate_app/app/components/common_widget/image_widget.dart';
import 'package:real_estate_app/app/components/common_widget/sizeBox_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_form_widget.dart';
import 'package:real_estate_app/app/components/common_widget/text_widget.dart';
import 'package:real_estate_app/app/modules/home/controllers/login_controller.dart';
import 'package:sizer/sizer.dart';



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
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3.h),
                        topLeft: Radius.circular(3.h),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SizedBox(
                                width: 17.w,
                                child: Divider(
                                  thickness: 0.60.h,
                                  color: Color(0xFFCDCFD1),
                                ),
                              ),
                            ),
                            ImageWidget(
                              "assets/image/stars.png",
                              width: 10.w,
                              height: 10.w,
                              fit: BoxFit.cover,
                            ),
                            SizeBoxWidget(height: 2.h),
                            TextWidget(
                              "Get Started",
                              fontSize: 16.sp,
                              fontFamily: "Satoshi",
                              color: Color(0xFFE86A53),
                              textAlign: TextAlign.start,
                            ),
                            SizeBoxWidget(height: 2.h),
                            TextWidget(
                              "By joining us, you will gain access to cutting-edge \nresources, expert guidance, etc. Unlock your potential\nnow!",
                              fontSize: 14.sp,
                              fontFamily: "Satoshi",
                              color: Color(0xFF999999),
                              textAlign: TextAlign.start,
                            ),
                            SizeBoxWidget(height: 2.h), // Added for spacing consistency
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  "Email",
                                  fontSize: 14.sp,
                                  fontFamily: "Satoshi",
                                  color: Color(0xFFE86A53),
                                  textAlign: TextAlign.start,
                                ),
                                SizeBoxWidget(height: 1.h), // Added for spacing consistency

                                TextFormFieldWidget(controller.password,12.h,"Email Address",1.3.h,"Email Address"),
                              ],
                            ),
                            SizeBoxWidget(height: 2.h), // Added for spacing consistency

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  "Password",
                                  fontSize: 14.sp,
                                  fontFamily: "Satoshi",
                                  color: Color(0xFFE86A53),
                                  textAlign: TextAlign.start,
                                ),
                                SizeBoxWidget(height: 1.h), // Added for spacing consistency

                                TextFormFieldWidget(controller.email,12.h,"Password",1.3.h,"Password"),
                              ],
                            ),
                        Row(
              children: [
                CustomCheckbox(
                  size: 0.25.w, // Adjust the size here
                  value: true,
                  onChanged: (bool? newValue) {
                        // Handle checkbox state change
                  },
                ),
                SizeBoxWidget(height: 3.w), // Added for spacing consistency
                TextWidget(
                  "Remember me",
                  fontSize: 12.sp,
                  fontFamily: "Satoshi",
                  color: Color(0xFF999999),
                  textAlign: TextAlign.start,
                ),
                Spacer(),
                TextWidget(
                  "Forgot password?",
                  fontSize: 12.sp,
                  fontFamily: "Satoshi",
                  color: Color(0xFFD30000),
                  textAlign: TextAlign.start,
                ),

              ],
                        ),
                            GestureDetector(
                              onTap: () {
                                if(form.currentState!.validate()){

                                }
                              },
                              child: Container(
                                height: 7.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color:
                                      Color(0xFFE86A53)

                                 ,
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                                child: Center(
                                  child: TextWidget(
                                    "Login",
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
            padding:  EdgeInsets.only(top: 5.h,left: 5.w),
            child: GestureDetector(onTap: (){
              Get.offAndToNamed("/registration_screen");
            },child: CircleAvatar(radius: 2.5.h,backgroundColor: Color(0xFFFFFFFF).withOpacity(0.50),child: Icon(Icons.arrow_back,color: Colors.white,),)),
          ),
        ],
      ),
    );
  }
}
