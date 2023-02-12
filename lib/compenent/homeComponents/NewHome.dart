import 'package:final_project/compenent/homeComponents/Homecard2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/gelcotor.dart';
import '../../view/Eventdetails.dart';


class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
       InkWell(
        onTap: () => Get.to(() => EventDetails(
                        image: ("images/مخيم شتوي.png"),
                        year: 2024,
                        month: 1,
                        day: 1,
                        nameCompany: "حضانة إثراء المعرفة ",
                        nameActivity: "مخيم شتوي".tr,
                        activityDetails: "تجارب علمية وألعاب ترفيهية",
                        dateActivity: "Winter Season",
                        timeActivity: " من 6:30 ص الى 10:00م",
                        city: "الرياض",
                        locationActivity: "رقم 126، الياسمين،",
                        shareActivity: "test",
                        latitude: 24.8540300,
                        longitude: 46.7127014,
                        titleLocation: "test",
                        phoneNumber: "0543008574",
                      )),
         child: Container(
                       width: (MediaQuery.of(context).size.width),
                       height: (MediaQuery.of(context).size.height / 2) - 230,
                       child: Homecard2(
                          imagepath: "images/مخيم شتوي.png",
                              Agerange: "10-13",
                        NameAr: " مخيم شتوي",
                        NameEN: "Winter camp",
                         Prantavrge: "17-30",
                         oldPrice: 700,
                         price: 570,
                       ),
                     ),
       ), InkWell(onTap: () => Get.to(() => EventDetails(
                        image: ("images/نشطة رياضية.png"),
                        year: 2023,
                        month: 1,
                        day: 1,
                        nameCompany: "أكاديمية المحترف".tr,
                        nameActivity: 'أنشطة رياضية'.tr,
                        activityDetails:
                            "كرة قدم وكاراتيه وأنشطة حركية ورياضية".tr,
                        dateActivity: "اسبوع الاجازة".tr,
                        timeActivity: " من 3:45 الى 4:45".tr,
                        city: "الرياض".tr,
                        locationActivity: "الرياض -اليرموك ",
                        shareActivity: "54".tr,
                        latitude: 24.8540300,
                        longitude: 46.7127014,
                        titleLocation: "54".tr,
                        phoneNumber: "920006685",
                      )),



                     child: Container(
                       width: (MediaQuery.of(context).size.width),
                       height: (MediaQuery.of(context).size.height / 2) - 230,
                       child: Homecard2(
                         imagepath: "images/نشطة رياضية.png",
                         Agerange: "10-14",
                         NameAr: "أنشطة رياضية",
                         NameEN: "Sports Activities",
                         Prantavrge: "17-30",
                         oldPrice: 200,
                         price: 100,
                       ),
                     ),
                   ),
                 
             
           
         
      ]));
    
  }
}
