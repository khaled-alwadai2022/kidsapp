import 'package:final_project/compenent/ButtomNav.dart';
import 'package:final_project/compenent/passLogin.dart';
import 'package:final_project/compenent/textFiledCoustom.dart';
import 'package:final_project/compenent/textFiledPass.dart';
import 'package:final_project/controller/ProfilePageController.dart';
import 'package:final_project/controller/SingupControler.dart';
import 'package:final_project/controller/loginController.dart';
import 'package:final_project/view/ReSentPass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  LoginController loginController = Get.put(LoginController());

  final _email = GlobalKey<FormState>();
  final _pass = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '8'.tr,
          style: TextStyle(fontSize: 17, color: Color(0xffAD557A)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea( 


      
          child: ListView(


            
        children: [


Center(child: Container(child: Image.asset("images/WhatsApp Image 2022-12-31 at 3.40.21 PM.jpeg"),),), 

          SizedBox(
            height: 50,
          ),
          TextFiledCustome(
              formKey: _email,
              hint: "6".tr,
              controller: loginController.emailCon),
          SizedBox(
            height: 25,
          ),
          TextFiledPassLogin(
            hint: "7".tr,
            formKey: _pass,
            controller: loginController.passCon,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff1F61C3)),
              child: TextButton(
                onPressed: () {
                  var valEmail = _email.currentState!.validate();
                  var valPass = _pass.currentState!.validate();

                  if (valEmail && valPass) {
                    loginController.signIn();
                  }
                  ;
                },
                child: Text(
                  "8".tr,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 235, right: 40),
            child: InkWell(
                onTap: () {
                  Get.to(() => ReSentPass());
                },
                child: Text("9".tr)),
          )
        ],
      )),
    );
  }
}
