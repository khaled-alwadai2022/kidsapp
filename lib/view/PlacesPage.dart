import 'package:final_project/compenent/ButtomNav.dart';
import 'package:final_project/compenent/containerPlaces.dart';
import 'package:final_project/compenent/searchBar.dart';
import 'package:final_project/view/Eventdetails.dart';
import 'package:final_project/view/PlacesDetiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PlacesPage extends StatelessWidget {
  const PlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "20".tr,
              style: TextStyle(
                  color: Color(0xffAD557A),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 30,
            ),
            SearchBar(),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Get.to(() => PlacesDet(
                      namePlace: 'ترفيه ولعب',
                      ActivityNameEng: "World Zezo",
                      ActivityNameAra: "عالم زيزو",
                      city: "Riyadh",
                      Finalprice: "100",
                      Firstprice: "90",
                      image: "images/زيزو.png",
                      //////////////////////////////////////////////////
                      imagePlase: "images/زيزو.png",
                      nameCompany: 'ترفيه ولعب',
                      nameActivity: "عالم زيزو",
                      activityDetails:
                          "زيزو ورلد عالم من اللعب الحركي الآمن , الذي يعتمد على رفع حيوية ونشاط الجسم, ستجد الكثير من الألعاب الحركية التي تم تصميمها لتحقق اللعب الآمن مع الحركة المفيدة للطفل من سن ",
                      cityPlase: "الرياض",
                      locationActivity: "النرجس",
                      phoneNumber: "+966503533387",
                      shareActivity: "النرجس",
                      timeActivity: "من 3 الى 11 مساء",
                    ));
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    child: Image.asset(
                        "images/Screenshot 1444-05-26 at 12.11 1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 88),
                    child: Container(
                      width: 365,
                      height: 29,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0x20000000),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                      child: Text(
                        "22".tr,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "تعليم وابداع",
                          ActivityNameEng: "Motion colors",
                          ActivityNameAra: "ألوان الحركة",
                          city: "Riyadh",
                          Finalprice: "100",
                          Firstprice: "150",
                          image: "images/ألوان الحركة.png",
                          ////////////////////////////
                          imagePlase: "images/ألوان الحركة.png",
                          nameCompany: "تعليم وابداع",
                          nameActivity: "ألوان الحركة",
                          activityDetails: "مركز لتطوير المهارات مثل الرسم",
                          cityPlase: "الرياض",
                          locationActivity: "الياسمين",
                          phoneNumber: "+966557444534",
                          shareActivity: "ألوان الحركة",
                          timeActivity: "من ص11:30 الى 7 مساء",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "23".tr,
                      image:
                          "images/Just for Teachers_ 5 Tips to Stay Organized 1.png"),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "رياضة ودفاع عن النفس",
                          ActivityNameEng: "Karate House",
                          ActivityNameAra: "كاراتيه هاوس",
                          city: "Riyadh",
                          Finalprice: "100",
                          Firstprice: "150",
                          image: "images/كاراتيه هاوس.png",
                          ////////////////////////////
                          imagePlase: "images/كاراتيه هاوس.png",
                          nameCompany: "رياضة ودفاع عن النفس",
                          nameActivity: "كاراتيه هاوس",
                          activityDetails:
                              "نادي رياضي للأطفال لتعليمهم الكاراتيه بمستويات متعددة",
                          cityPlase: "الرياض",
                          locationActivity: "المروج",
                          phoneNumber: "+966554011174",
                          shareActivity: "رياضة ودفاع عن النفس",
                          timeActivity: "من 2 م الى 10 م",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "24".tr,
                      image:
                          "images/Should Your Kid Take Karate or Judo_ Here's the Difference Between 5 Martial Arts 1.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "حيوانات أليفة",
                          ActivityNameEng: "Pet bouncing rabbit",
                          ActivityNameAra: 'أرنب نط للحيوانات الأليفة',
                          city: "Riyadh",
                          Finalprice: "100",
                          Firstprice: "150",
                          image: "images/أرنب نط.png",
                          ////////////////////////////
                          imagePlase: "images/أرنب نط.png",
                          nameCompany: "حيوانات أليفة",
                          nameActivity: 'أرنب نط للحيوانات الأليفة',
                          activityDetails: "متجر حيوانات",
                          cityPlase: "الرياض",
                          locationActivity: "الملقا",
                          phoneNumber: "+966535440360",
                          shareActivity: 'أرنب نط للحيوانات الأليفة',
                          timeActivity: "من 12 ص الى 12 م",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "25".tr,
                      image: "images/Screenshot 1444-05-26 at 11.55 1.png"),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "تسوق ومشتريات",
                          ActivityNameEng: "New York Games",
                          ActivityNameAra: "ألعاب نيويورك",
                          city: "Riyadh",
                          Finalprice: "100",
                          Firstprice: "150",
                          image: "images/العاب نيويورك.png",
                          ////////////////////////////
                          imagePlase: "images/العاب نيويورك.png",
                          nameCompany: "تسوق ومشتريات",
                          nameActivity: "ألعاب نيويورك",
                          activityDetails: "متجر العاب أطفال",
                          cityPlase: "الرياض",
                          locationActivity: "النفل",
                          phoneNumber: "+966535550850",
                          shareActivity: "ألعاب نيويورك",
                          timeActivity: "من 1 م الى 12 م",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "26".tr,
                      image: "images/Screenshot 1444-05-26 at 11.44 1.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "أماكن خارجية وحدائق",
                          ActivityNameEng: "Al Ajlan Park",
                          ActivityNameAra: 'حديقة العجلان',
                          city: "Riyadh",
                          Finalprice: "100",
                          Firstprice: "150",
                          image: "images/حديقة العجلان.png",
                          ////////////////////////////
                          imagePlase: "images/حديقة العجلان.png",
                          nameCompany: "أماكن خارجية وحدائق",
                          nameActivity: 'حديقة العجلان',
                          activityDetails: "حديقة عامة في الحي",
                          cityPlase: "الرياض",
                          locationActivity: "القيروان",
                          phoneNumber: "+966550444444",
                          shareActivity: 'حديقة العجلان',
                          timeActivity: "24 ساعة",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "27".tr,
                      image: "images/Screenshot 1444-05-26 at 12.15 1.png"),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "أطعمة ومشروبات",
                          ActivityNameEng: "McDonald's",
                          ActivityNameAra: "ماكدونالدز",
                          city: "Riyadh",
                          Finalprice: "50",
                          Firstprice: "75",
                          image: "images/ماكدونالدز.png",
                          ////////////////////////////
                          imagePlase: "images/ماكدونالدز.png",
                          nameCompany: "أطعمة ومشروبات",
                          nameActivity: "ماكدونالدز",
                          activityDetails:
                              "سلسلة مطاعم كلاسيكية وعريقة للوجبات السريعة تشتهر بأطباق البرغر والبطاطا المقلية",
                          cityPlase: "الرياض",
                          locationActivity: "طريق الامير محمد بن سلمان ",
                          phoneNumber: "+9668001212345",
                          shareActivity: "ماكدونالدز",
                          timeActivity: "24 ساعة",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "28".tr,
                      image: "images/Screenshot 1444-05-26 at 11.59 1.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "دور ضيافة",
                          ActivityNameEng: "My Mother's House Center",
                          ActivityNameAra: "مركز بيت أمي - ضيافة أطفال",
                          city: "Riyadh",
                          Finalprice: "100",
                          Firstprice: "150",
                          image: "images/مركز بيت أمي.png",
                          ////////////////////////////
                          imagePlase: "images/مركز بيت أمي.png",
                          nameCompany: "دور ضيافة",
                          nameActivity: "مركز بيت أمي - ضيافة أطفال",
                          activityDetails:
                              "مركز بيت أمي مثل بيت الأم في رعاية الأطفال وقت إنشغالك، عناية وتعليم وترفيه بجوده عاليه",
                          cityPlase: "الرياض",
                          locationActivity: "النرجس",
                          phoneNumber: "+966583825116",
                          shareActivity: "مركز بيت أمي - ضيافة أطفال",
                          timeActivity: "من 2 م الى 9 م",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "29".tr,
                      image: "images/Screenshot 1444-05-26 at 10.48 1.png"),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => PlacesDet(
                          namePlace: "حلاقين",
                          ActivityNameEng: "A children's barber",
                          ActivityNameAra: "حلاق اطفال شغف طفل",
                          city: "Riyadh",
                          Finalprice: "25",
                          Firstprice: "40",
                          image: "images/حلاق.png",
                          ////////////////////////////
                          imagePlase: "images/حلاق.png",
                          nameCompany: "حلاقين",
                          nameActivity: "حلاق اطفال شغف طفل",
                          activityDetails: "حلاق مخصص للأطفال فقط",
                          cityPlase: "الرياض",
                          locationActivity: "الملك فهد -الرياض قاليري",
                          phoneNumber: "+966557979076",
                          shareActivity: "حلاق اطفال شغف طفل",
                          timeActivity: "من 12 صباحا الى 12 مساء",
                        ));
                  },
                  child: ContainerPlaces(
                      label: "30".tr,
                      image: "images/Screenshot 1444-05-26 at 10.47 1.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(() => PlacesDet(
                      namePlace: "تنسيق حفلات",
                      ActivityNameEng: "Party Experts",
                      ActivityNameAra: "بارتي إكسبرتس",
                      city: "Riyadh",
                      Finalprice: "50",
                      Firstprice: "100",
                      image: "images/بارتي اكسبرتس.png",
                      ////////////////////////////
                      imagePlase: "images/بارتي اكسبرتس.png",
                      nameCompany: "تنسيق حفلات",
                      nameActivity: "بارتي إكسبرتس",
                      activityDetails: "محل مختص بحفلات الأطفال",
                      cityPlase: "الرياض",
                      locationActivity: "المرسلات",
                      phoneNumber: "+966558101056",
                      shareActivity: "بارتي إكسبرتس",
                      timeActivity: "من 3:30 الى 11:30 مساء",
                    ));
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 150,
                    child: Image.asset(
                        "images/Screenshot 1444-05-26 at 10.50 1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95),
                    child: Container(
                      width: 356,
                      height: 29,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0x20000000),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                      child: Text(
                        "31".tr,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
