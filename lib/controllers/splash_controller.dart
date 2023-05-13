import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../core/collections.dart';
import 'firebase_auth_controller.dart';

class SplashController extends GetxController {
  late final box = GetStorage();


  @override
  void onInit() async {
    String uid = firebaseUserId();
    if(uid.isNotEmpty){
      Get.offAllNamed('/dashBoard');
    }else{
      Get.put<FirebaseAuthController>(FirebaseAuthController());
      Get.offAllNamed('/welcomeScreen');
    }

    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
