import 'package:final_project/compenent/ActivityContainer.dart';
import 'package:final_project/compenent/searchBar.dart';
import 'package:final_project/view/Eventdetails.dart';
import 'package:final_project/view/PlacedetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PlacesDet extends StatelessWidget {
  PlacesDet({
    super.key,
    required this.namePlace,
    required this.image,
    required this.ActivityNameEng,
    required this.ActivityNameAra,
    required this.city,
    required this.Firstprice,
    required this.Finalprice,
    required this.imagePlase,
    required this.nameCompany,
    required this.nameActivity,
    required this.activityDetails,
    required this.timeActivity,
    required this.cityPlase,
    required this.locationActivity,
    required this.shareActivity,
    required this.phoneNumber,
  });

  String? namePlace;
  String image;
  String ActivityNameEng;
  String ActivityNameAra;
  String city;
  String Firstprice;
  String Finalprice;
  ////////////////////////////////////////////////////
  String imagePlase;
  String nameCompany;
  String nameActivity;
  String activityDetails;
  String timeActivity;
  String cityPlase;
  String locationActivity;
  String shareActivity;

  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      SizedBox(
        height: 15,
      ),
      Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 400,
            alignment: Alignment.center,
            //color: Color(0x20000000),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                    )),
                Text(
                  "$namePlace",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180),
            child: InkWell(
              onTap: () {
                Get.to(() => Placedetails(
                      image: ("$imagePlase"),
                      nameCompany: "$nameCompany",
                      nameActivity: "$nameActivity",
                      activityDetails: "$activityDetails",
                      timeActivity: "$timeActivity",
                      city: "$cityPlase",
                      locationActivity: "$locationActivity",
                      shareActivity: "$shareActivity",
                      phoneNumber: "$phoneNumber",
                    ));
              },
              child: CustomContainer(
                ActivityNameEng: '$ActivityNameEng',
                ActivityNameAra: "$ActivityNameAra",
                City: '$city',
                Firstprice: '$Firstprice',
                Finalprice: '$Finalprice',
                ActivityImage: Image.asset(
                  "$image",
                  fit: BoxFit.fill,
                  height: 120,
                  width: 180,
                ),
              ),
            ),
          ),
        ],
      )),
    ])));
  }
}
