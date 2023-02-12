import 'package:final_project/compenent/homeComponents/Homecard3.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width),
                  height: (MediaQuery.of(context).size.height / 2) - 200,
                  child: HomeCard3(
                    imagepath: "images/قدوتي.jpeg",
                    Agerange: "5-14",
                    NameAr: "قدوتي",
                    NameEN: " My role model",
                  ),
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            Column(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width),
                  height: (MediaQuery.of(context).size.height / 2) - 200,
                  child: HomeCard3(
                    imagepath: "images/نشطة رياضية.png",
                    Agerange: "10",
                    NameAr: "أنشطة رياضية",
                    NameEN: "Sports Activities",
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width),
                  height: (MediaQuery.of(context).size.height / 2) - 200,
                  child: HomeCard3(
                    imagepath:
                        "images/WhatsApp Image 2022-12-23 at 4.29 1.jpeg",
                    Agerange: "7-17",
                    NameAr: "متابعة دراسية",
                    NameEN: "Study follow-up",
                  ),
                )
              ],
            ),
          ],
        ),
        Column(
          children: [
            Column(
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width),
                  height: (MediaQuery.of(context).size.height / 2) - 200,
                  child: HomeCard3(
                    imagepath: "images/معسكر شتاء.jpeg",
                    Agerange: "9-15",
                    NameAr: "معسكر شتاء",
                    NameEN: " Winter Camp",
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width),
                  height: (MediaQuery.of(context).size.height / 2) - 200,
                  child: HomeCard3(
                    imagepath: "images/مخيم ضياء الطفولة.jpeg",
                    Agerange: "4-7",
                    NameAr: "ضياءالطفولة",
                    NameEN: "Diaa Al-Tofula Camp",
                  ),
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
