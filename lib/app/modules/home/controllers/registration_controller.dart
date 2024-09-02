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
void changeValueToClick(){
  isClick=!isClick;
  if(isClick==false){
    Get.offAndToNamed("/SignUp");
  }else{
    Get.offAndToNamed("/login");


  }
  print(isClick);
  update();
}

}
