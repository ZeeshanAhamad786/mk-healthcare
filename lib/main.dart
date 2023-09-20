import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mk_health_care/Login%20Screens/AppoinmentScreen.dart';
import 'package:mk_health_care/Login%20Screens/ConsultHomeScreen.dart';
import 'package:mk_health_care/Login%20Screens/SignIn.dart';

import 'Login Screens/Splash Screens.dart';
import 'Login Screens/SymptomScreen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',

    getPages: [
      GetPage(name: '/splash', page: () => SplashScreen()),
      GetPage(name: '/symptom', page: () => SymptomScreen()),
      GetPage(name: '/appoinment', page: () => AppoinmentScreen()),
      GetPage(name: '/consulthomescreen', page: () => ConsultHomeScreen()),
      GetPage(name: '/signin', page: () => SignIn()),

    ],
  ));
}
