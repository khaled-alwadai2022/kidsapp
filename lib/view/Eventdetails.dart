import 'package:final_project/view/bookingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:share_plus/share_plus.dart';

class EventDetails extends StatelessWidget {
  EventDetails({
    super.key,
    required this.image,
    required this.year,
    required this.month,
    required this.day,
    required this.nameCompany,
    required this.nameActivity,
    required this.activityDetails,
    required this.dateActivity,
    required this.timeActivity,
    required this.city,
    required this.locationActivity,
    required this.shareActivity,
    required this.latitude,
    required this.longitude,
    required this.titleLocation,
    required this.phoneNumber,
  });
  int year;
  int month;
  int day;
  String image;
  String nameCompany;
  String nameActivity;
  String activityDetails;
  String dateActivity;
  String timeActivity;
  String city;
  String locationActivity;
  String shareActivity;
  double latitude;
  double longitude;
  String titleLocation;
  String phoneNumber;

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime(2023, 1, 1);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "$image",
                        fit: BoxFit.fitWidth,
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
                    padding: const EdgeInsets.only(
                      left: 280,
                    ),
                    child: Text(
                      "$nameActivity",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Text(
                      "$activityDetails",
                      style: TextStyle(fontSize: 15),
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
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 10),
                                child: Text(
                                  "57".tr,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 10),
                                child: Text(
                                  "$dateActivity",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0x70000000)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 48, left: 48),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
                              child: Text(
                                "59".tr,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 10),
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
                              fontSize: 12, fontWeight: FontWeight.bold),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              Share.share("$shareActivity");
                            },
                            icon: Icon(Icons.ios_share_outlined)),
                        Container(
                          child: LikeButton(),
                        ),
                        IconButton(
                            onPressed: () async {
                              showDatePicker(
                                  context: context,
                                  initialDate: dateTime,
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2100));
                            },
                            icon: Icon(Icons.calendar_month_outlined)),
                        IconButton(
                            onPressed: () async {
                              final availableMaps =
                                  await MapLauncher.installedMaps;
                              await availableMaps.first.showMarker(
                                coords: Coords(latitude, longitude),
                                title: "$titleLocation",
                              );
                            },
                            icon: Icon(Icons.map)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          FlutterPhoneDirectCaller.callNumber("$phoneNumber");
                        },
                        child: Container(
                          height: 50,
                          width: 136,
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
                      SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => Pay());
                        },
                        child: Container(
                            height: 50,
                            width: 136,
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
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
