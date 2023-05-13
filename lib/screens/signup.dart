import 'package:course_guide_app/core/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/firebase_auth_controller.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FirebaseAuthController>();
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFBF3EF),
        body:
           SingleChildScrollView(
             child: Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage("assets/images/welcomelogo.png"),
                      width: size.width * 0.9,
                      height: size.height * 0.16,
                    ),
                    SizedBox(height: 0),
                    Text(
                      " Create Your Account".toUpperCase(),
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Form(
                      key: controller.signupFormKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(
                        height: 45,
                        child: TextFormField(
                          controller:controller.nameController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.drive_file_rename_outline),
                            labelText: "Name",
                            hintText: "Enter Your Full name ",
                            border: OutlineInputBorder(),
                          ),
                          validator: nameValidator,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        child: TextFormField(
                          controller: controller.emailController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_rounded),
                            labelText: "Email",
                            hintText: "Enter Your Email",
                            border: OutlineInputBorder(),
                          ),
                          validator: emailValidator,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        child: TextFormField(
                          controller: controller.phoneController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: "Phone Num",
                            hintText: "Enter Your Phone Num",
                            border: OutlineInputBorder(),
                          ),
                          validator: phoneValidator,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        child: TextFormField(
                          controller: controller.passwordController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.fingerprint_rounded),
                              labelText: "Password",
                              hintText: "ChoosePassword",
                            border: OutlineInputBorder(),

                          ),
                          validator: passwordValidator,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                          SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () async {
                                await controller.signupWithEmailPassword(context);
                              },
                              child: Text("Sign Up".toUpperCase()),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.withOpacity(0.7),
                                shape: RoundedRectangleBorder(),
                              ),
                            ),
                          ),

                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 30, child: Text("OR")),
                          SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: OutlinedButton.icon(
                              icon: Image(image: AssetImage('assets/images/google_icon.png'), width: 20,),
                              label: Text("Sign in with Google",
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ) ,
                              onPressed: (){},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                Get.toNamed('/login');
                              },
                              child: RichText(
                                text: TextSpan(
                                  text: 'Already Have Account? ',
                                  style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Login',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  )
                  )
                ],
              ),

          ),
           ),


      ),
    );
  }
}
