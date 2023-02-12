import 'dart:math';

import 'package:final_project/compenent/ButtomNav.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailCon = TextEditingController();
  final passCon = TextEditingController();
  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailCon.text.trim(), password: passCon.text.trim());
      Get.to(ButtomNavBar());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Email", "The email does not exist");
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Password", "Wrong password provided for that user.");
      }
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailCon.dispose();
    passCon.dispose();
  }
}
