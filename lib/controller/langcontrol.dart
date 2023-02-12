import 'package:final_project/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangControler extends GetxController {
  Locale initlang =
      sharepref!.getString("LA") == "ar" ? Locale("en") : Locale("ar");

  langVhange(String LA) {
    sharepref!.setString("LA", LA);

    Locale laLAng = Locale(LA);

    Get.updateLocale(laLAng);
  }
}
