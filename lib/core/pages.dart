import 'package:course_guide_app/screens/welcomeScreen.dart';
import 'package:get/get.dart';
import '../screens/dashBoard.dart';
import '../screens/login.dart';
import '../screens/signup.dart';
import '../screens/splashScreen.dart';
import 'binding.dart';

class Pages {
  static List<GetPage> all = [
    GetPage(name: "/", page: () => SplashScreen(), binding: SplashBinding()),
    GetPage(name: "/login", page: () => Login(), fullscreenDialog: true),
    GetPage(name: "/welcomeScreen", page: () => const WelcomeScreen(), fullscreenDialog: true),
    GetPage(name: "/signup", page: () => SignupPage(), fullscreenDialog: true),
    GetPage(name: "/dashBoard", page: () => const DashBoard(),fullscreenDialog: true),
  ];
}
