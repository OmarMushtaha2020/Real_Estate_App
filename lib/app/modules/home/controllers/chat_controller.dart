import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/owner_model.dart';

class ChatController extends GetxController {
  //TODO: Implement ChatController
List<OwnerModel>owners=[
  OwnerModel(nameOwner: "Steven Adams",image: "assets/image/imageBuildingOne.png",descriptiveName: "Property Owner",chatHistory: "23/07/2024",connected: false),
  OwnerModel(nameOwner: "Arthur Wraight",image: "assets/image/imageBuildingTwo.png",descriptiveName: "Property Owner",chatHistory: "16/07/2024",connected: true),

];
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
}
