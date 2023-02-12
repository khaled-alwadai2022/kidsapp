import 'package:final_project/main.dart';
import 'package:final_project/view/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../view/Singup.dart';

class BottomSheetCustome extends StatelessWidget {
  BottomSheetCustome({super.key, required this.label});

  String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Color(0xff1F61C3)),
      child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1".tr,
                            style: TextStyle(color: Color(0xffAD557A)),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            height: 40,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xff1F61C3)),
                            child: TextButton(
                                onPressed: () {
                                  Get.to(() => SingUp());
                                },
                                child: Text(
                                  '2'.tr,
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "3".tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Image.asset("images/apple-logo 1.png"),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "10".tr,
                                      style:
                                          TextStyle(color: Color(0xff1F61C3)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 22,
                                  height: 22,
                                  child: Image.asset(
                                    "images/facebook 1.png",
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "12".tr,
                                    style: TextStyle(color: Color(0xff1F61C3)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 22,
                                height: 22,
                                child: Image.asset("images/google 1.png"),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "11".tr,
                                  style: TextStyle(color: Color(0xff1F61C3)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "4".tr,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                  onTap: () {
                                    Get.to(() => LoginPage());
                                  },
                                  child: Text("5".tr,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffAD557A)))),
                            ],
                          )
                        ],
                      ),
                    ));
          },
          child: Text(
            '$label',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          )),
    );
  }
}
