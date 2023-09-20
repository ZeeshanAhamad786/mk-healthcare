import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'CustomTextField.dart';
import 'RecoverPassword.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController emailname = TextEditingController();
  final TextEditingController passwordname = TextEditingController();
  final screenWidth = Get.mediaQuery.size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.black),
            ),
            SizedBox(
              width: 80,
            ),
            Text('Create Account', style: TextStyle(color: Colors.black)),
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
        padding: EdgeInsets.symmetric(horizontal: screenWidth < 768 ? 10.0 : 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Join for\nhealth Care Now!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth < 768 ? 24 : 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                labelText: "First Name",
                hintText: "User", controller: firstname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                labelText: "Last Name",
                hintText: "User", controller: lastname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                labelText: "Email",
                hintText: "User@gmail.com", controller: emailname,
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                labelText: 'Password',
                hintText: '........',
                isPassword: true, controller: passwordname,
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 60,
                  width: screenWidth < 768 ? double.infinity : 400,
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
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RecoverPassword(),
                  ));
                },
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Already have an account?',style: TextStyle(color: Color(0xff033F42))),
                    Text(
                      'Login In',
                      style: TextStyle(color: Color(0xffFAB915)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}