import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxInt selectedIndex = 0.obs;

  RxList<Map<String, dynamic>> requests = <Map<String, dynamic>>[].obs;
  RxList<Map<String, dynamic>> inProgress = <Map<String, dynamic>>[].obs;
  RxList<Map<String, dynamic>> rented = <Map<String, dynamic>>[].obs;

  // final List<Map<String, dynamic>> requests = List.generate(
  //     5,
  //         (index) => {
  //       "image": "https://i.ibb.co/v17QsPJ/image-2.png",
  //       "title": "10 Holland Road, #09-04",
  //       "location": "Holland",
  //       "bedrooms": 2,
  //       "bathrooms": 2,
  //       "Requests": 2,
  //     });
  final count = 1.obs;
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

  addRequests(int number){
    List<Map<String, dynamic>> items = List.generate(
        number,
            (index) => {
          "image": "https://i.ibb.co/v17QsPJ/image-2.png",
          "title": "10 Holland Road, #09-04",
          "location": "Holland",
          "bedrooms": 2,
          "bathrooms": 2,
          "Requests": 2
        });
    requests.addAll(items);
  }

  addInProgress(int number){
    List<Map<String, dynamic>> items = List.generate(
        number,
            (index) => {
          "image": "https://i.ibb.co/v17QsPJ/image-2.png",
          "title": "10 Holland Road, #09-04",
          "location": "Holland",
          "bedrooms": 2,
          "bathrooms": 2
        });
    inProgress.addAll(items);
  }

  addRented(int number){
    List<Map<String, dynamic>> items = List.generate(
        number,
            (index) => {
          "image": "https://i.ibb.co/v17QsPJ/image-2.png",
          "title": "10 Holland Road, #09-04",
          "location": "Holland",
          "bedrooms": 2,
          "bathrooms": 2
        });
    rented.addAll(items);
  }

  void onItemTapped(index) {
    selectedIndex.value = index;
    if(index == 2){
      addInProgress(1);
    }

  }


}
