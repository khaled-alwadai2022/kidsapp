import 'package:final_project/controller/gelcotor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

class Homecard2 extends StatelessWidget {
  Homecard2(
      {super.key,
      this.imagepath,
      this.NameAr,
      this.NameEN,
      this.price,
      this.Agerange,
      this.Prantavrge,
      this.oldPrice});
  String? imagepath;
  String? NameAr;
  String? NameEN;
  String? Agerange;
  int? price;
  String? Prantavrge;
  int? oldPrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 + 170,
          height: (MediaQuery.of(context).size.height / 7) + 30,
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
                                (MediaQuery.of(context).size.height / 8) + 10,
                            width: MediaQuery.of(context).size.width + 50,
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  NameEN!,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff1F61C3)),
                                ),
                                Text(NameAr!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff1F61C3))),
                                
                                Column(
                                  children: [
                                    Text(
                                      " ${Agerange!}Y",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff1F61C3)),
                                    ),
                                    Text(
                                      "${Prantavrge!}APR",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff1F61C3)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 80, 0),
                                      child: Row(
                                        children: [
                                          Text("${oldPrice}",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Color(0xff929090))),
                                          Text("${price!}SR",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xffAD557A))),
                                        ],
                                      ),
                                    ),
                                  ],
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
                                  (MediaQuery.of(context).size.height / 6) + 3,
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
