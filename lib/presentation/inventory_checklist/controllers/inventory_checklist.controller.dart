import 'package:get/get.dart';

class InventoryChecklistController extends GetxController {
  //TODO: Implement InventoryChecklistController

  final String isNewUserRegistration = 'isNewUserRegistration';

  final List<Map<String, dynamic>> items = List.generate(
      5,
          (index) => {
        "id": index,
        "title": "Bedroom $index",
        "content": [
          {
            "title": "Wardrobe",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Air-conditioner",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Fan",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Air-c",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Light",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Bed",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Mattress",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Curtains",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          },
          {
            "title": "Side Tables",
            "content": "Good Condition with Lock Height 5.5 Ft & Width 7 Ft",
            "image": "https://i.ibb.co/v17QsPJ/image-2.png"
          }
        ]
      });
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

}
