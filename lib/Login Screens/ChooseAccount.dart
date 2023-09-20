import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mk_health_care/Login%20Screens/SignUp.dart';

class ChooseAccount extends StatefulWidget {
  const ChooseAccount({Key? key}) : super(key: key);

  @override
  State<ChooseAccount> createState() => _ChooseAccountState();
}

class _ChooseAccountState extends State<ChooseAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black),
            ),
            SizedBox(
              width: 60,
            ),
            Text('Create Account',style: TextStyle(color: Colors.black)),
          ],
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/Group 2.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(alignment: Alignment.topLeft,
                child: Text(
                  'Choose Account\nType',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 38 ,
                  ),
                ),
              ),


              SizedBox(height: 50,),
              TextButton(
                onPressed: () {
                  Get.to(()=>SignUp());
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.5,
                      ),
                    ],
                    color: Color(0xffFAB915),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      "Health Care Provider",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Or'),
              SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2.5,
                      ),
                    ],
                    color: Color(0xffFAB915),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      "Patient",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}