import 'package:final_project/view/bookingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:like_button/like_button.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:share_plus/share_plus.dart';

class Placedetails extends StatelessWidget {
  Placedetails({
    super.key,
    required this.image,
    required this.nameCompany,
    required this.nameActivity,
    required this.activityDetails,
    required this.timeActivity,
    required this.city,
    required this.locationActivity,
    required this.shareActivity,
    required this.phoneNumber,
  });

  String image;
  String nameCompany;
  String nameActivity;
  String activityDetails;

  String timeActivity;
  String city;
  String locationActivity;
  String shareActivity;

  String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "$image",
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      alignment: Alignment.center,
                      color: Color(0x20000000),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          Text(
                            "$nameCompany",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "$nameActivity",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "$activityDetails",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, top: 10, left: 15),
                      child: Icon(
                        Icons.access_time_outlined,
                        color: Color(0xffAD557A),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Text(
                            "59".tr,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 10),
                          child: Text(
                            "$timeActivity",
                            style: TextStyle(
                                fontSize: 16, color: Color(0x70000000)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, top: 10, left: 15),
                      child: Image.asset("images/buildings 1.png"),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 15, top: 15, left: 15),
                      child: Text(
                        "$city",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 10, top: 10, left: 10),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Color(0xffAD557A),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 10, top: 15, left: 7),
                      child: Text(
                        "$locationActivity",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: IconButton(
                            onPressed: () {
                              Share.share("$shareActivity");
                            },
                            icon: Icon(Icons.ios_share_outlined)),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Container(
                            child: LikeButton(),
                          )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: InkWell(
                        onTap: () {
                          FlutterPhoneDirectCaller.callNumber("$phoneNumber");
                        },
                        child: Container(
                          height: 50,
                          width: 164,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ]),
                          child: Icon(
                            Icons.call,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => Pay());
                        },
                        child: Container(
                            height: 50,
                            width: 164,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xff1F61C3),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: Text(
                              "62".tr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
