import 'package:final_project/view/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReSentPassController extends GetxController {
  final emailCon = TextEditingController();

  Future reSentPass() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailCon.text.trim());

      print(emailCon.text);
      Get.defaultDialog(content: Text("Done"), title: "Resent password");
    } on FirebaseException catch (e) {
      print("error pass");
    }
  }
}
