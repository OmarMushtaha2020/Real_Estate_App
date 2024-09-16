import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/app/modules/home/controllers/add_review_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/appointment_schedule_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/appointment_success_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/book_mark_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/chat_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/chat_details_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/email_verification_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/filter_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/home_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/layout_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/login_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/notification_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/onboarding_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/photos_details_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/profile_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/profile_details_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/property_details_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/property_owner_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/rating_page_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/real_estate_type_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/registration_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/role_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/search_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_new_location_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/set_up_location_manually_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/sign_up_controller.dart';
import 'package:real_estate_app/app/modules/home/controllers/video_call_controller.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
    Get.lazyPut<RegistrationController>(
          () => RegistrationController(),
    );
    Get.lazyPut<LoginController>(
          () => LoginController(),
    );
    Get.lazyPut<SignUpController>(
          () => SignUpController(),
    );
    Get.lazyPut<EmailVerificationController>(
          () => EmailVerificationController(),
    );
    Get.lazyPut<RoleController>(
          () => RoleController(),
    );
    Get.lazyPut<SetUpLocationController>(
          () => SetUpLocationController(),
    );
    Get.lazyPut<SetUpLocationManuallyController>(
          () => SetUpLocationManuallyController(),
    );
    Get.lazyPut<RealEstateTypeController>(
          () => RealEstateTypeController(),
    );
    Get.lazyPut<NotificationController>(
          () => NotificationController(),
    );
    Get.lazyPut<FilterController>(
          () => FilterController(),
    );
    Get.lazyPut<BookMarkController>(
          () => BookMarkController(),
    );
    Get.lazyPut<ChatController>(
          () => ChatController(),
    );
    Get.lazyPut<SearchControllers>(
          () => SearchControllers(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
  Get.put(LayoutController(),permanent:true);
    Get.lazyPut<ProfileController>(
          () => ProfileController()
    );
    Get.lazyPut<PropertyDetailsController>(
          () => PropertyDetailsController(),
    );

    Get.lazyPut<PropertyOwnerController>(
          () => PropertyOwnerController(),
    );
    Get.lazyPut<PhotosDetailsController>(
          () => PhotosDetailsController(),
    );
    Get.lazyPut<AppointmentSuccessController>(
          () => AppointmentSuccessController(),
    );
    Get.lazyPut<AppointmentScheduleController>(
          () => AppointmentScheduleController(),
    );
    Get.lazyPut<ChatDetailsController>(
          () => ChatDetailsController(),
    );
    Get.lazyPut<AddReviewController>(
          () => AddReviewController(),
    );
    Get.lazyPut<RatingPageController>(
          () => RatingPageController(),
    );

    Get.lazyPut<VideoCallController>(
          () => VideoCallController(),
    );
    Get.lazyPut<ProfileDetailsController>(
          () => ProfileDetailsController(),
    );
    Get.lazyPut<SetNewLocationController>(
          () => SetNewLocationController(),
    );
  }
}
