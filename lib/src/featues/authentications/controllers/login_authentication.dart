import 'package:course_guide_app/src/repository/authentication_repo/authentication_repo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class login_authentication extends GetxController
{
static login_authentication get instance => Get.find();
final name = TextEditingController();
final email = TextEditingController();
final phone = TextEditingController();
final password = TextEditingController();

void registerUser(String email, String password)
{
  Authentication_repo.instance.createUserwithEmailPassword(email, password);
}
}