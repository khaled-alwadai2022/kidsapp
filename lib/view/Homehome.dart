import 'package:final_project/compenent/homeComponents/CloseHome.dart';
import 'package:final_project/compenent/homeComponents/NewHome.dart';
import 'package:final_project/compenent/homeComponents/upcoming.dart';
import 'package:final_project/controller/ProfilePageController.dart';
import 'package:final_project/controller/home_controller.dart';
import 'package:final_project/main.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/gelcotor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController homeController = Get.put(HomeController());
  ProfilePageController pageController = Get.put(ProfilePageController());

  Geloctor geloctor = Get.put(Geloctor());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    geloctor.getoPstion();
    geloctor.listofeventes();
    pageController.getInfoUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            '71'.tr,
            style: TextStyle(fontSize: 17, color: Color(0xffAD557A)),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(0, 255, 255, 255)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 140),
            child: Row(
              children: [
                //Icon(Icons.place),
                Text("${box.read("city")}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 5 - 8,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(
                      "images/Screenshot 1444-05-25 at 10.22 1.png",
                      colorBlendMode: BlendMode.colorBurn,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Container(
                      height: MediaQuery.of(context).size.height / 5 - 10,
                      decoration: BoxDecoration(
                          // color: Color.fromARGB(86, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "73".tr,
                        style: TextStyle(
                          color: Color.fromARGB(255, 44, 39, 39),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0, 1.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 16, 16, 16),
                            ),
                          ],
                        ),
                      ))),
                ),
              )
            ],
          ),
          Expanded(
            child: Column(children: <Widget>[
              DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(children: <Widget>[
                    TabBar(
                      automaticIndicatorColorAdjustment: true,
                      labelColor: Color(0xff5F95D4),
                      unselectedLabelColor: Colors.black,
                      isScrollable: false,
                      indicatorColor: Color.fromARGB(255, 10, 24, 224),
                      labelStyle: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: [
                        //tabs lebels
                        Tab(text: '74'.tr),
                        Tab(
                          text: '75'.tr,
                        ),
                        Tab(text: '76'.tr),
                      ],
                    ),
                    Containe(
                        height: MediaQuery.of(context).size.height / 2+20,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(0, 0, 0, 0),
                            border: Border(
                                top: BorderSide(
                                    color: Color.fromARGB(255, 130, 110, 110),
                                    width: 0.5))),
                        child: TabBarView(children: <Widget>[
                          // taps path
                          Closetoyou(), New(), Upcoming(),
                        ]))
                  ])),
            ]),
          ),
        ],
      ),
    );
  }
}
