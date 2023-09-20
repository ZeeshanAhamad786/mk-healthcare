import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mk_health_care/Login%20Screens/ConsultHomeScreen.dart';

class AppoinmentScreen extends StatefulWidget {
  const AppoinmentScreen({Key? key}) : super(key: key);

  @override
  State<AppoinmentScreen> createState() => _AppoinmentScreenState();
}

class _AppoinmentScreenState extends State<AppoinmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SvgPicture.asset('assets/Onboarding_Illustration1.svg'),
          SizedBox(
            height: 30,
          ),
          Text(
            "   Make an\nAppoinment",
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
            "  Get the care you need,from\nanywhere through our plateform.",
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
                    fontWeight: FontWeight.bold,fontSize: 18
                  ),
                ),
              ),
              SizedBox(width: 30,),
              TextButton(
                onPressed: () {
Get.to(()=>ConsultHomeScreen());
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
                        style: TextStyle(color: Colors.white,fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        onPressed: () {

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
