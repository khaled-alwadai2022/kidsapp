import 'package:final_project/compenent/ActivityContainer.dart';
import 'package:final_project/compenent/searchBar.dart';
import 'package:final_project/view/Eventdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 26, left: 26),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "32".tr,
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
                Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image: ("images/نشطة رياضية.png"),
                                  year: 2023,
                                  month: 1,
                                  day: 1,
                                  nameCompany: "أكاديمية المحترف".tr,
                                  nameActivity: 'أنشطة رياضية'.tr,
                                  activityDetails:
                                      "كرة قدم وكاراتيه وأنشطة حركية ورياضية"
                                          .tr,
                                  dateActivity: "اسبوع الاجازة".tr,
                                  timeActivity: " من 3:45 الى 4:45".tr,
                                  city: "الرياض".tr,
                                  locationActivity: "البرموك - الرياض".tr,
                                  shareActivity: "54".tr,
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "54".tr,
                                  phoneNumber: "920006685",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'sport activities',
                            ActivityNameAra: 'أنشطة رياضية',
                            City: 'Ryiadh',
                            Firstprice: '200',
                            Finalprice: '100',
                            ActivityImage: Image.asset(
                              "images/نشطة رياضية.png",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),

                        //This is a simple example of how you can put details for an event
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image: ("images/سبتات للفتيات.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany: "قدوة للتدريب  ",
                                  nameActivity: "فعالية سبتات للفتيات".tr,
                                  activityDetails:
                                      "فعالية تقام يوم السبت فيها تأمل وكشتة وأنشطة مرحة للفتيات من عمر 10-15 عام",
                                  dateActivity: "1444/06/08",
                                  timeActivity: " من 3:30 الى 6:30",
                                  city: "الرياض",
                                  locationActivity:
                                      "دار هيا النسائية - حي الملقا",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "0571385770",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'BLVD skate World',
                            ActivityNameAra: 'قدوة للتدريب',
                            City: 'Ryiadh',
                            Firstprice: '120',
                            Finalprice: '100',
                            ActivityImage: Image.asset(
                              "images/سبتات للفتيات.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image: ("images/قدوتي.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany: " نجباء  ",
                                  nameActivity: "قدوتي",
                                  activityDetails:
                                      "مبادرة تهدف إلى غرس تطبيق الهدي النبوي في نفوس الأطفال وتعريفهم بسيرته عليه الصلاة والسلام",
                                  dateActivity: "من 5/28 الى 7/11",
                                  timeActivity: " من 3:30 الى 7:30",
                                  city: "الرياض",
                                  locationActivity:
                                      "مركز الرسالة - حي الملك فهد",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "0500944460",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'BLVD skate World',
                            ActivityNameAra: "قدوتي   ",
                            City: 'Ryiadh',
                            Firstprice: '390',
                            Finalprice: '100',
                            ActivityImage: Image.asset(
                              "images/قدوتي.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image:
                                      ("images/WhatsApp Image 2022-12-23 at 5.22.38 AM.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany: "Avalley SA   ",
                                  nameActivity: "هايك الأطفال".tr,
                                  activityDetails:
                                      " رحلة للأطفال لممارسة رياضة الهايكنق",
                                  dateActivity: "24/12/2022",
                                  timeActivity: " من 3:00 الى 6:00",
                                  city: "الرياض",
                                  locationActivity: "العمارية",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "565338880",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'Kids hiking',
                            ActivityNameAra: "هايك الأطفال",
                            City: 'Ryiadh',
                            Firstprice: '220',
                            Finalprice: '100',
                            ActivityImage: Image.asset(
                              "images/WhatsApp Image 2022-12-23 at 5.22.38 AM.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image: ("images/برنامج ترفيهي.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany:
                                      " مركز يوم الطفل لضيافة الاطفال  ",
                                  nameActivity: "برنامج ترفيهي",
                                  activityDetails:
                                      "برنامج ترفيهي باشتراك شهري أو اسبوعي وصالات خارجية وألعاب",
                                  dateActivity: "طوال السنة",
                                  timeActivity: "-",
                                  city: "الرياض",
                                  locationActivity: "ام الحمام الشرقي",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "0546762075",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'entertainment programme',
                            ActivityNameAra: 'برنامج ترفيهي',
                            City: 'Ryiadh',
                            Firstprice: '200',
                            Finalprice: '100',
                            ActivityImage: Image.asset(
                              "images/برنامج ترفيهي.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image:
                                      ("images/WhatsApp Image 2022-12-23 at 4.29 1.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany: " جمعية التنمية الاهلية   ",
                                  nameActivity: "متابعة دراسية   ".tr,
                                  activityDetails:
                                      " متابعة دراسية للحقيبة الكاملة لطلاب الابتدائي",
                                  dateActivity: "طوال السنة ",
                                  timeActivity: " من 4:00 الى 6:00",
                                  city: "الرياض",
                                  locationActivity:
                                      " جمعية التنمية الاهلية  - حي المروج",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "0571385770",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'Study follow-up',
                            ActivityNameAra: "متابعة دراسية   ",
                            City: 'Ryiadh',
                            Firstprice: '1400',
                            Finalprice: '1300',
                            ActivityImage: Image.asset(
                              "images/WhatsApp Image 2022-12-23 at 4.29 1.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image: ("images/معسكر شتاء.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany: "مركز كفّك للترفيه - هاي فايف  ",
                                  nameActivity: "معسكر شتاء".tr,
                                  activityDetails: "برنامج ترفيه وتعليم وتنمية",
                                  dateActivity: "Winter Season",
                                  timeActivity: " من 3:30 الى 6:30",
                                  city: "الرياض",
                                  locationActivity:
                                      "طريق عثمان بن عفان، الفلاح، الرياض",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "0502307971",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'winter camp',
                            ActivityNameAra: "معسكر شتاء",
                            City: 'Ryiadh',
                            Firstprice: '900',
                            Finalprice: '800',
                            ActivityImage: Image.asset(
                              "images/معسكر شتاء.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image: ("images/مخيم ضياء الطفولة.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany: "ضياء الطفولة  ",
                                  nameActivity: "مخيم ضياء الطفولة".tr,
                                  activityDetails: " تعلم الرسم والتلوين",
                                  dateActivity: "27 nov - 1 dec",
                                  timeActivity: " من 4:00 الى 7:00",
                                  city: "الرياض",
                                  locationActivity: "عالم النخيل - حي حطين",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "0534946929",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'deyaa Childhood Camp',
                            ActivityNameAra: "مخيم ضياء الطفولة",
                            City: 'Ryiadh',
                            Firstprice: '750',
                            Finalprice: '650',
                            ActivityImage: Image.asset(
                              "images/مخيم ضياء الطفولة.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
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
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'winter camp',
                            ActivityNameAra: "مخيم شتوي",
                            City: 'Ryiadh',
                            Firstprice: '570',
                            Finalprice: '470',
                            ActivityImage: Image.asset(
                              "images/مخيم شتوي.png",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => EventDetails(
                                  image: ("images/قضاء الاجازة.jpeg"),
                                  year: 2024,
                                  month: 1,
                                  day: 1,
                                  nameCompany: "خطوات النمو ",
                                  nameActivity: "قضاء الاجازة".tr,
                                  activityDetails:
                                      " عمال يدوية مثل الفخار ونشاط الطاهي الصغير",
                                  dateActivity: "1444/06/08",
                                  timeActivity: " من 6:30 ص الى 4:30",
                                  city: "الرياض",
                                  locationActivity:
                                      "مركز المدارس بالرياض   -  الياسمين",
                                  shareActivity: "test",
                                  latitude: 24.8540300,
                                  longitude: 46.7127014,
                                  titleLocation: "test",
                                  phoneNumber: "0559333454",
                                ));
                          },
                          child: CustomContainer(
                            ActivityNameEng: 'vacation',
                            ActivityNameAra: 'قضاء الاجازة',
                            City: 'Ryiadh',
                            Firstprice: '550',
                            Finalprice: '450',
                            ActivityImage: Image.asset(
                              "images/قضاء الاجازة.jpeg",
                              fit: BoxFit.fill,
                              height: 120,
                              width: 180,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
