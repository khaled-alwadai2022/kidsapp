import 'package:final_project/view/Eventdetails.dart';
import 'package:final_project/view/Homehome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer(
      {super.key,
      required this.ActivityNameEng,
      required this.ActivityNameAra,
      required this.City,
      required this.Firstprice,
      required this.Finalprice,
      required this.ActivityImage});

  final String ActivityNameEng;
  final String ActivityNameAra;
  final String City;
  final String Firstprice;
  final String Finalprice;
  final Image ActivityImage;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 4),
      child: Container(
        height: 236,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(children: [
                  widget.ActivityImage,
                  Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top:120.0 ,right: 10),
                          child: Container(
                            child: LikeButton(),
                          )),
                    ],
                  )
                ])),
            Spacer(flex: 1,),
            Text(
              widget.ActivityNameEng,
              style: TextStyle(
                  color: Color(0xff1F61C3),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.ActivityNameAra,
              style: TextStyle(color: Color(0xff1F61C3), fontSize: 12),
            ),
            Text(
              widget.City,
              style: TextStyle(
                  color: Color.fromARGB(143, 31, 97, 195), fontSize: 12),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Text(
                        widget.Firstprice,
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Color(0xff929090),
                            fontSize: 10),
                      ),
                    ],
                  ),
                  Text(
                    "SR",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Color(0xff929090),
                        fontSize: 10),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.Finalprice,
                    style: TextStyle(
                        color: Color(0xffAD557A),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "SR",
                    style: TextStyle(color: Color(0xffAD557A), fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
