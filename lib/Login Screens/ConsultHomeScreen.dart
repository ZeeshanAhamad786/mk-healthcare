import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mk_health_care/Login%20Screens/ChooseAccount.dart';
import 'package:mk_health_care/Login%20Screens/SignIn.dart';

import 'AppoinmentScreen.dart';

class ConsultHomeScreen extends StatefulWidget {
  const ConsultHomeScreen({Key? key}) : super(key: key);

  @override
  State<ConsultHomeScreen> createState() => _ConsultHomeScreenState();
}

class _ConsultHomeScreenState extends State<ConsultHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SvgPicture.asset('assets/Onboarding_Illustration2.svg'),
            SizedBox(
              height: 30,
            ),
            Text(
              "   Consult\nfrom Home",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Telemedicine makes it easy to see a doctor\nonline,without having to leave your home.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
            ),
            SizedBox(height: 30),


            TextButton(
              onPressed: () {
                Get.to(() => ChooseAccount());
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.5,
                    ),
                  ],
                  color: Color(0xffFAB915),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  ),
                ),


              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => SignIn());
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(border: Border.all(color: Colors.black),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.5,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.black,fontSize: 16),
                  ),
                ),


              ),
            )
          ],
        ),
      ),
    );
  }
}