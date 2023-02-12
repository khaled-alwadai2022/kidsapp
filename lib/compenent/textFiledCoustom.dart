import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

//hhh
class TextFiledCustome extends StatelessWidget {
  TextFiledCustome(
      {super.key,
      required this.formKey,
      required this.hint,
      required this.controller});

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
          //autovalidateMode: AutovalidateMode.onUserInteraction,
          child: TextFormField(
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "Text is empty";
                }
                return null;
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
