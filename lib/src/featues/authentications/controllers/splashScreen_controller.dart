import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/welcomeScreen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  void goToWelcomeScreen() {
    Timer(Duration(seconds: 3), () {
      Get.off(() => welcomeScreen());
    });
  }
}

class splashScreen extends StatefulWidget {
  splashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<splashScreen> {
  final splashController = Get.put(SplashScreenController());

  @override
  void initState() {
    super.initState();
    splashController.goToWelcomeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF3EF),
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Image(
                image: AssetImage("assets/images/cover.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
