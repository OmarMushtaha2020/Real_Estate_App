import 'package:get/get.dart';

class SearchControllers extends GetxController {
  //TODO: Implement SearchController
  final RxList<String> recentSearches = <String>[].obs;

  // Method to add search term to recent searches
  void addSearchTerm(String term) {
    if (term.isNotEmpty && !recentSearches.contains(term)) {
      recentSearches.insert(0, term);
      if (recentSearches.length > 10) {
        recentSearches.removeLast(); // Limiting the list to 10 items
      }
    }
  }

  // Method to clear recent searches
  void clearRecentSearches() {
    recentSearches.clear();
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
