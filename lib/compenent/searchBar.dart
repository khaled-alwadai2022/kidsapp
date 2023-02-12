import 'package:final_project/compenent/containerFliter.dart';
import 'package:final_project/view/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Container(
            width: 300,
            height: 29,
            child: TextField(
              decoration: InputDecoration(
                // change hint hare
                hintText: '21'.tr,
                contentPadding: EdgeInsets.all(0),
                filled: true,
                fillColor: Color(0xffECF0F1),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => Container(
                      height: Get.height / 1.4,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Icon(Icons.close)),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 140,
                                ),
                                child: Text(
                                  "41".tr,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: Text(
                                  "42".tr,
                                  style: TextStyle(
                                      color: Color(0xffAD557A), fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 350),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "38".tr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                ContainerFliter(
                                    height: 29, label: "39".tr, width: 49),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "40".tr, width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "43".tr, width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "44".tr, width: 87),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                ContainerFliter(
                                    height: 29, label: "45".tr, width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "46".tr, width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "47".tr, width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "48".tr, width: 64),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Divider(
                              color: Color(0x50000000),
                              thickness: 1,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 300),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "49".tr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Row(
                              children: [
                                ContainerFliter(
                                    height: 29, label: "50".tr, width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "51".tr, width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "52".tr, width: 87),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Divider(
                              color: Color(0x50000000),
                              thickness: 1,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 300),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "49".tr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Row(
                              children: [
                                ContainerFliter(
                                    height: 29, label: "0-3", width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "3-6", width: 87),
                                SizedBox(
                                  width: 15,
                                ),
                                ContainerFliter(
                                    height: 29, label: "6-9", width: 87),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 290, top: 10),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: ContainerFliter(
                                    height: 29, label: "9-14", width: 87)),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xff1F61C3)),
                              child: TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  "53".tr,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
          },
          child: Icon(
            Icons.filter_list_outlined,
            size: 35,
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }
}
