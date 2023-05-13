import 'package:get/get.dart';

import '../controllers/firebase_auth_controller.dart';
import '../controllers/splash_controller.dart';
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<FirebaseAuthController>(FirebaseAuthController());
  }
}