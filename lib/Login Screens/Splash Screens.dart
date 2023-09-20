import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.offNamed('/symptom');
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Group 1.png'),
            SizedBox(height: 16),
            CircularProgressIndicator(), // Optionally, you can add a loading indicator
          ],
        ),
      ),
    );
  }
}
