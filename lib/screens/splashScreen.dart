import 'package:course_guide_app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF3EF),
      body: Center(
        child: Stack(
          children: const [
            Image(
              image: AssetImage("assets/images/cover.png"),
            ),
          ],
        ),
      ),
    );
  }
}
