import 'package:course_guide_app/src/featues/authentications/Screens/dashBoard.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/welcomeScreen.dart';
import 'package:course_guide_app/src/featues/authentications/controllers/splashScreen_controller.dart';
import 'package:course_guide_app/src/repository/authentication_repo/exceptions/loginlogoutexceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class Authentication_repo extends GetxController
{
  static Authentication_repo get instance => Get.find();
  final auth = FirebaseAuth.instance;
  late final Rx<User?>  firebaseUser;
  @override
  void onReady()
  {
  firebaseUser= Rx<User?>(auth.currentUser);
  firebaseUser.bindStream(auth.userChanges());
  ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ?  Get.offAll(() => welcomeScreen() ) : Get.offAll(()=> const dashBoard());
  }
  Future<void> createUserwithEmailPassword(String email, String password)
  async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value!= null?  Get.offAll(() => const  dashBoard()): Get.offAll(()=> welcomeScreen() );
    } on FirebaseAuthException catch(e)
    {
      final ex = LoginLogoutException.code(e.code);
      print('Authentication Error - ${ex.message}' );
      throw ex;
    }
    catch(_)
    {


    }
  }
  Future<void> loginWithEmailPassword(String email, String password)
  async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch(e)
    {

    }
    catch(_)
    {

    }
  }
  Future <void> logOut()
  async => await auth.signOut();
}