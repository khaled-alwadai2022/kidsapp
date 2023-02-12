import 'package:final_project/controller/SingupControler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class TextFiledPass extends StatelessWidget {
  TextFiledPass(
      {super.key,
      required this.formKey,
      required this.hint,
      required this.controller});
  SingUpController singUpController = Get.put(SingUpController());

  String hint;
  TextEditingController? controller = new TextEditingController();
  final GlobalKey formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        width: 320,
        height: 80,
        child: Form(
          key: formKey,
          child: TextFormField(
              obscureText: true,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "Text is password";
                } else if (text.length < 8) {
                  return "Password must be atleast 8 characters long";
                }
                if (text != singUpController.RpassCon.text) {
                  return "Password must be same as above";
                } else {
                  return null;
                }
              },
              controller: controller,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Color(0x20000000)),
                filled: true,
                fillColor: Color(0xffECF0F1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              )),
        ),
      ),
    );
    ;
  }
}
