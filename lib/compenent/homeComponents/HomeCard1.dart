import 'package:final_project/compenent/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class MyCard extends StatelessWidget {
  MyCard(
      {super.key,
      this.imagepath,
      this.NameAr,
      this.NameEN,
      this.destance,
      this.price,
      this.oldPrice});

  String? imagepath;
  String? NameAr;
  String? NameEN;
  int? destance;
  int? price;
  int? oldPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          width: 200,
          height: (MediaQuery.of(context).size.height / 4) + 60.5,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color.fromARGB(255, 225, 250, 238),
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            semanticContainer: false,
            margin: EdgeInsets.zero,
            elevation: 3,
            child: InkWell(
              child: Column(
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("${imagepath}"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                            width: 200,
                            height:
                                (MediaQuery.of(context).size.height / 3) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 188),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color.fromARGB(199, 245, 237, 237),
                            ),
                            height:
                                (MediaQuery.of(context).size.height / 3) / 3,
                            width: MediaQuery.of(context).size.width + 20,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(1, 0, 0, 0),
                                  child: Text(
                                    NameEN!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff1F61C3)),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                  child: Text(NameAr!,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff1F61C3))),
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("${destance!}KM Away",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff1F61C3))),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 20, 0),
                                          child: Row(
                                            children: [
                                              Text("${oldPrice}",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color:
                                                          Color(0xff929090))),
                                              Text("${price}",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Color(0xffAD557A))),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130.0,top:189),
                          child: LikeButton(),
                        ),
                      ],
                    ),
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
