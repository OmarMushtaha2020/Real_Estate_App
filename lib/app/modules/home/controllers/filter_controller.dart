import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/property.dart';

class FilterController extends GetxController {
  //TODO: Implement FilterController
List <Property>propertyType=[
  Property(selected:false,title: "All"),
  Property(selected:false,title:"House"),
  Property(selected:false,title:"Appartment"),
  Property(selected:false,title:"Workspace"),
  Property(selected:false,title:"Commercial"),
  Property(selected:false,title:"Villa"),
  Property(selected:false,title:"Cabin"),
  Property(selected:false,title:"Cluster"),


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
