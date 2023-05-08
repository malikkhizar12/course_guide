import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/login.dart';
import 'package:course_guide_app/src/featues/authentications/controllers/login_authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(login_authentication());
    final form_key = GlobalKey<FormState>();
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
                      key: form_key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Container(
                        height: 45,
                        child: TextFormField(
                          controller:controller.name,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.drive_file_rename_outline),
                            labelText: "Name",
                            hintText: "Enter Your Full name ",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        child: TextFormField(
                          controller: controller.email,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_rounded),
                            labelText: "Email",
                            hintText: "Enter Your Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        child: TextFormField(
                          controller: controller.phone,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: "Phone Num",
                            hintText: "Enter Your Phone Num",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        child: TextFormField(
                          controller: controller.password,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.fingerprint_rounded),
                              labelText: "Password",
                              hintText: "ChoosePassword",
                            border: OutlineInputBorder(),

                          ),

                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                          SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: (){
                                if(form_key.currentState!.validate())
                                  {
                                    login_authentication.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                                  }
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
                                Get.to(()=>login());
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
