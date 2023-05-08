import 'package:course_guide_app/firebase_options.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/dashBoard.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/login.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/signup.dart';
import 'package:course_guide_app/src/repository/authentication_repo/authentication_repo.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(Authentication_repo()));

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "CourseGuide",
      routes: {
        '/signup': (context) => SignupPage(),
        '/login': (context) => login(),
        '/dashBoard': (context) => dashBoard(),

      },
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
