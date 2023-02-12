import 'package:final_project/compenent/textFiledCoustom.dart';
import 'package:final_project/compenent/textFiledPass.dart';
import 'package:final_project/controller/SingupControler.dart';
import 'package:final_project/controller/gelcotor.dart';
import 'package:final_project/controller/loginController.dart';
import 'package:final_project/view/LoginPage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SingUp extends StatefulWidget {
  SingUp({
    super.key,
  });

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  SingUpController singUpController = Get.put(SingUpController());

  Geloctor geloctor = Geloctor();

  final _email = GlobalKey<FormState>();

  final _pass = GlobalKey<FormState>();

  final _FirstName = GlobalKey<FormState>();

  final _LastName = GlobalKey<FormState>();

  final _ReenterPassword = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "2".tr,
          style: TextStyle(fontSize: 17, color: Color(0xffAD557A)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            child: TextFiledCustome(
                formKey: _FirstName,
                hint: "13".tr,
                controller: singUpController.FnameCon),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: TextFiledCustome(
                formKey: _LastName,
                hint: "14".tr,
                controller: singUpController.LNameCon),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: TextFiledCustome(
                formKey: _email,
                hint: "17".tr,
                controller: singUpController.emailCon),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: TextFiledPass(
                formKey: _pass,
                hint: "7".tr,
                controller: singUpController.RpassCon),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            child: TextFiledPass(
                formKey: _ReenterPassword,
                hint: "15".tr,
                controller: singUpController.passCon),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff1F61C3)),
              child: TextButton(
                  onPressed: () {
                    print(geloctor.listofeventes().toString());
                    var valEmail = _email.currentState!.validate();
                    var valPass = _pass.currentState!.validate();
                    var valfirst = _FirstName.currentState!.validate();
                    var valast = _LastName.currentState!.validate();
                    var valReset = _ReenterPassword.currentState!.validate();

                    if (valEmail && valPass && valfirst && valast && valReset) {
                      singUpController.signUp();
                    }
                  },
                  child: Text(
                    '16'.tr,
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "18".tr,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Center(
            child: Text("19".tr,
                style: TextStyle(fontSize: 15, color: Color(0xffAD557A))),
          )
        ],
      ),
    );
  }
}
