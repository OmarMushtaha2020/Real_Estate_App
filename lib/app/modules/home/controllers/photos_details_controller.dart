import 'package:get/get.dart';
import 'package:real_estate_app/app/data_model/contents_property_model.dart';
import 'package:real_estate_app/app/data_model/property.dart';

class PhotosDetailsController extends GetxController {
  //TODO: Implement PhotosDetailsController
  List<ContentsProperty> contentsProperty = [
    ContentsProperty(selected: false, title: "All Photos"),
    ContentsProperty(selected: false, title: "Parking Lot"),
    ContentsProperty(selected: false, title: "Living Room"),
    ContentsProperty(selected: false, title: "Bedroom"),
    ContentsProperty(selected: false, title: "Bathroom"),

  ];
  List<Property>buliding=[
    Property(image:"assets/image/imageBuildingOne.png" ,title: "The Minimalist",locationProperty: "Brooklyn, New York"),

    Property(image:"assets/image/imageBuildingTwo.png" ,title: "Retro House",locationProperty: "Canarsie, New York"),
  ];
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
