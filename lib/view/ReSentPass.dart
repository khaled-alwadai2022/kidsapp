import 'package:final_project/controller/reSentPassCon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ReSentPass extends StatelessWidget {
  ReSentPass({super.key});

  ReSentPassController reSentPassController = Get.put(ReSentPassController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Enter your email and you will receive a password reset email",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 320,
            height: 80,
            child: TextField(
                controller: reSentPassController.emailCon,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(color: Color(0x20000000)),
                  filled: true,
                  fillColor: Color(0xffECF0F1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                )),
          ),
          ElevatedButton(
              onPressed: () {
                reSentPassController.reSentPass();
              },
              child: Text("Resent Password"))
        ],
      )),
    );
  }
}
