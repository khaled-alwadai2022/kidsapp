import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/langcontrol.dart';

class ChangeLAng extends StatefulWidget {
  const ChangeLAng({super.key});

  @override
  State<ChangeLAng> createState() => _ChangeLAngState();
}

class _ChangeLAngState extends State<ChangeLAng> {
  LangControler controler = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      appBar: AppBar(title: Text("85".tr) , centerTitle: true, ),
      body: ListView(
        children: [ 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.blue),
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.height / 3,
              child: TextButton(
                onPressed: () {
                  controler.langVhange("en");
                },
                child: Text(
                  "Engleh",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.blue),
              height: MediaQuery.of(context).size.height / 7,
              width: MediaQuery.of(context).size.height / 3 +5,
              child: TextButton(
                onPressed: () {
                  controler.langVhange("ar");
                },
                child: Text(
                  "عربي",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
