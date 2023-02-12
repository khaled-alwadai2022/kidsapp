import 'package:final_project/view/Eventdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ContainerPlaces extends StatelessWidget {
  ContainerPlaces({super.key, required this.label, required this.image});

  String? label;
  String? image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 124,
            width: 136,
            child: Image.asset("$image"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 95, right: 20),
          child: Container(
            width: 136,
            height: 29,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0x20000000),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            child: Text(
              "$label".tr,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }
}
