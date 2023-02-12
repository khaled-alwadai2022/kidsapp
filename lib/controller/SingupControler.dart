import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/main.dart';
import 'package:final_project/view/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpController extends GetxController {
  final emailCon = TextEditingController();
  final passCon = TextEditingController();
  final FnameCon = TextEditingController();
  final LNameCon = TextEditingController();
  final RpassCon = TextEditingController();
  String? uid;

  Future signUp() async {
    var fireStore = await FirebaseFirestore.instance;

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailCon.text.trim(),
        password: passCon.text.trim(),
      );
      uid = await FirebaseAuth.instance.currentUser?.uid;
      print(uid);
      fireStore.collection("Users").doc(uid).set({
        "First_Name": "${FnameCon.text}",
        "Last_Name": "${LNameCon.text}",
        "Email": "${emailCon.text}",
      });

      Get.to(() => LoginPage());
      Get.snackbar("Sign Up", "successfully registered");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar("Password", "The password is weak");
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar("ُEmail", "The account already exists for that email.");
      }
    } catch (e) {}
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailCon.dispose();
    passCon.dispose();
    LNameCon.dispose();
    FnameCon.dispose();
    RpassCon.dispose();
    print("close");
  }
}
