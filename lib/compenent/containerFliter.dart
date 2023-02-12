import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ContainerFliter extends StatefulWidget {
  ContainerFliter(
      {super.key,
      required this.label,
      required this.height,
      required this.width});
  String? label;
  double? height;
  double? width;

  @override
  State<ContainerFliter> createState() => _ContainerFliterState();
}

class _ContainerFliterState extends State<ContainerFliter> {
  int index = 0;
  List<Color> containerColor = [Color(0x50D9D9D9), Color(0x201F61C3)];
  void changeColor() {
    setState(() {
      if (index == 0) {
        index = 1;
      } else if (index == 1) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeColor();
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        color: containerColor[index],
        child: Text("${widget.label}"),
      ),
    );
  }
}
