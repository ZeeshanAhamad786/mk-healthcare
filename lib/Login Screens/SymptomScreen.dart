import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'AppoinmentScreen.dart';

class SymptomScreen extends StatefulWidget {
  const SymptomScreen({Key? key}) : super(key: key);

  @override
  State<SymptomScreen> createState() => _SymptomScreenState();
}

class _SymptomScreenState extends State<SymptomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SvgPicture.asset('assets/Onboarding_Illustration.svg'),
          SizedBox(
            height: 30,
          ),
          Text(
            "Find Your\nSymptoms",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Browse our list of doctors and find\n      one that's right for you.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 30,),
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 30,),
              TextButton(
                onPressed: () {
                  Get.to(() => AppoinmentScreen());
                },
                child: Container(
                  height: 60,
                  width: 140,
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
                  child: Row(
                    children: [
                      SizedBox(width: 40),
                      Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          Get.to(() => AppoinmentScreen());
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
