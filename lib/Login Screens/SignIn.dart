import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mk_health_care/Login%20Screens/RecoverPassword.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              width: 80,
            ),
            Text('Sign In',style: TextStyle(color: Colors.black)),
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
                  'Welcome\nback!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    label: Text('Email',
                        style: TextStyle(color: Color(0xff0D3F67))),
                    hintText: "123@gmail.com",
                    hintStyle: TextStyle(color: Color(0XFF033F42)),
                    suffixIcon: Transform.scale(
                        scale: 0.8,
                        child: SvgPicture.asset(
                          'assets/icon.svg',
                        )),
                    filled: true,
                    fillColor: Color(0xffF0F3F6),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField( obscureText: true,
                  decoration: InputDecoration(
                      label: Text('Password',
                          style: TextStyle(color: Color(0xff0D3F67))),
                      hintText: ".......",
                      hintStyle: TextStyle(
                          color: Color(0XFF033F42),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      suffixIcon: Transform.scale(
                          scale: 0.8,
                          child: SvgPicture.asset(
                            'assets/Eye.svg',
                          )),
                      filled: true,
                      fillColor: Color(0xffF0F3F6),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))
              ),

              SizedBox(height: 30,),
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
                      "Sign in",
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ),
                ),
              ),
              TextButton(onPressed: (){
                Get.to(()=>RecoverPassword());
              }, child: Text('Forgot Password?',style: TextStyle(color: Color(0xff033F42)),))
            ],
          ),
        ),
      ),
    );
  }
}