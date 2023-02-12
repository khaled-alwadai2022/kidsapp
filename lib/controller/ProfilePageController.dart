import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/controller/SingupControler.dart';
import 'package:final_project/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfilePageController extends GetxController {
  SingUpController singUpController = Get.put(SingUpController());
  var users = FirebaseFirestore.instance.collection("Users");
  String? name;
  String? email;

  void getInfoUser() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    var userInfo = await firestore
        .collection("Users")
        .doc(singUpController.uid)
        .get()
        .then((value) {
      if (value.exists) {
        name = value.data()!["First_Name"];
        email = value.data()!["Email"];
        print("Done");
        print(name);
        print(email);
        print(singUpController.uid);
      }
    });

    // box.write('First_Name', userInfo["First_Name"]);
    // print(box.read('First_Name'));
    // box.write('email', userInfo["Email"]);
    // print(box.read('email'));

    // print(singUpController.uid);
    // print("=+=+=+=++=+=+=+=+=+=+=+=+=+=+=+=+");
  }
}
