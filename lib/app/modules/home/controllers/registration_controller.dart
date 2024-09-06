import 'package:get/get.dart';

class RegistrationController extends GetxController {
  //TODO: Implement DialogcontrollerController

List<String>LoginMethods=[
  "Continue With Google","Continue With Apple",'Continue With Facebook'
];
List<String>LoginMethodsIcon=[
  "assets/image/google.png","assets/image/apple.png",'assets/image/facebook.png'
];
bool isClick=true;
void changeValueToClick(bool value){
  isClick=value;
  if(isClick==false){
    print("login");
    Get.offAndToNamed("/login");

  }else{
    print("SignUp");

    Get.offAndToNamed("/SignUp");


  }
  print(isClick);
  update();
}

}
