import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class HomeController extends GetxController {
  CollectionReference fireStore =
      FirebaseFirestore.instance.collection("Items");
  CollectionReference itme = FirebaseFirestore.instance.collection("Items");
  CollectionReference itmeDetalis =
      FirebaseFirestore.instance.collection("ItemsDetalis");

  Future setItem() async {
    fireStore.doc().set({
      //"imagepath": "images/سبتات للفتيات.png",
      "NameAr": " فعالية سبتات للفتيات",
      "NameEN": "Saturdays event for girls",
      "destance": 50,
      "price": 20,
      "oldPrice": 400,
    });

    itmeDetalis.add({
      "year": 2022,
      "month": 6,
      "day": 17,
      // "image": "images/سبتات للفتيات.png",
      "nameCompany": "قدوة للتدريب",
      "nameActivity": "فعالية سبتات للفتيات",
      "activityDetails":
          "فعالية تقام يوم السبت فيها تأمل وكشتة وأنشطة مرحة للفتيات من عمر 10-15 عام",
      "dateActivity": "1444/06/08",
      "timeActivity": " من 3:30 الى 6:30",
      "city": "الرياض",
      "locationActivity": "دار هيا النسائية - حي الملقا",
      "shareActivity": "test",
      "latitude": 24.8540300,
      "longitude": 46.7127014,
      "titleLocation": "test",
      "phoneNumber": "0571385770"
    });
  }
}
