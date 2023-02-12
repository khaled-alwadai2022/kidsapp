import 'package:final_project/compenent/ButtomNav.dart';
import 'package:final_project/firebase_options.dart';
import 'package:final_project/local/local.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/langcontrol.dart';

final box = GetStorage();

SharedPreferences? sharepref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();

  sharepref = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LangControler controler = Get.put(LangControler());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controler.initlang,
      translations: MyLocale(),
      home: ButtomNavBar(),
    );
  }
}
