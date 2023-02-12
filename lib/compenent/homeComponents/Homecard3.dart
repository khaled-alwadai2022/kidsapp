import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:like_button/like_button.dart';

class HomeCard3 extends StatelessWidget {
  HomeCard3(
      {super.key, this.imagepath, this.NameAr, this.Agerange, this.NameEN});
  String? imagepath;
  String? NameAr;
  String? NameEN;
  String? Agerange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 + 170,
          height: (MediaQuery.of(context).size.height / 7) + 35,
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: InkWell(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            height:
                            (MediaQuery.of(context).size.height / 7) + 10,
                            width: MediaQuery.of(context).size.width + 50,
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    NameEN!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff1F61C3)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(NameAr!,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff1F61C3))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 134, right: 146),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              "72".tr,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff1F61C3)),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(12),
                                              child:
                                              Image.asset("images/pin 1.png"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 55.0, right: 40),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            7, 0, 0, 0),
                                        child: Text(
                                          " ${Agerange!}Y",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff1F61C3)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(00, 0, 220, 0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 80, 0),
                                        child: Text("Coming Soon",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffAD557A))),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 300.0),
                        child: LikeButton(),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(240, 0, 0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                              width: (MediaQuery.of(context).size.width),
                              height:
                                  (MediaQuery.of(context).size.height / 6) + 2,
                              child: Image.asset(
                                "${imagepath}",
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
