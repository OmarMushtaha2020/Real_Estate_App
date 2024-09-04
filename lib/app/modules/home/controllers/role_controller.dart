import 'package:get/get.dart';

class RoleController extends GetxController {
  //TODO: Implement RoleController
  List<String> options = ['Real Estate Owner', 'Developer', 'Agent', 'Buyer'];
String selectedValue='';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  void changeSelectedValue(String value){
    selectedValue=value;
    print(selectedValue);
    update();

  }
}
