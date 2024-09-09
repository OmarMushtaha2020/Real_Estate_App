import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/property.dart';

class HomeController extends GetxController {
  List<Property> propertyType = [
    Property(selected: false, title: "All"),
    Property(selected: false, title: "House"),
    Property(selected: false, title: "Apartment"),
    Property(selected: false, title: "Workspace"),
    Property(selected: false, title: "Commercial"),
    Property(selected: false, title: "Villa"),
    Property(selected: false, title: "Cabin"),
    Property(selected: false, title: "Cluster"),
  ];
  List<Property>buliding=[
    Property(image:"assets/image/imageBuildingOne.png" ,title: "The Minimalist",locationProperty: "Brooklyn, New York"),

    Property(image:"assets/image/imageBuildingTwo.png" ,title: "Retro House",locationProperty: "Canarsie, New York"),
  ];
  // Store the index of the selected item
  var selectedIndex = Rx<int?>(null);

  void changeValueOfClick(int index) {
    selectedIndex.value = index;
    update();
  }

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
