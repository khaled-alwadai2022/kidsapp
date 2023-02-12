import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

import '../main.dart';

class Geloctor extends GetxController {
  bool? geloctorrsevices;
  LocationPermission? prmssion;
  Position? Curnetpostion;
  double? lang;
  double? latd;

  getoPstion() async {
    geloctorrsevices = await Geolocator.isLocationServiceEnabled();
    prmssion = await Geolocator.checkPermission();
    if (prmssion == LocationPermission.denied) {
      prmssion = await Geolocator.requestPermission();
    }
  }

  destansebtween(double latlng, double latud) {
    var btweentoPonits =
        Geolocator.distanceBetween(24.854301, 46.712671, latud, latlng);
    var btweentoPonitsKM = btweentoPonits / 1000;

    return (btweentoPonitsKM.toInt());
  }

  funStorge() async {}
  listofeventes() async {
// city location
    List<Placemark> plac = await placemarkFromCoordinates(24.653009, 46.726095);

    print("${plac[0].administrativeArea}");
    box.write("city", "${plac[0].administrativeArea}");
  }

  @override
  void onInit() {
    getoPstion();
    listofeventes();

    // TODO: implement onInit
    super.onInit();
  }
}
