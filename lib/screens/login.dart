
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/firebase_auth_controller.dart';


class Login extends StatelessWidget {

  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FirebaseAuthController>();
    final size= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFBF3EF),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(

              children: [
                const SizedBox(height: 40,),
                Image(image: const AssetImage("assets/images/welcomelogo.png"),width: size.width* 0.9, height: size.height * 0.16,),
                const SizedBox(height: 10,),
                Text("Welcome Back ".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("Login to Your Account"),
                const SizedBox(height: 50,),
                Form(child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: controller.emailController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_rounded),
                        labelText: "Email",
                        hintText: "Enter Your Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: controller.phoneController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.fingerprint_rounded),
                        labelText: "Password",
                        hintText: "Enter Password",
                        border: OutlineInputBorder(),

                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){

                      },
                          child: const Text(
                            "Forgot Password?"
                          )),
                    ),
                    SizedBox(width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () async {
                          await controller.signupWithEmailPassword(context);
                        },
                        child: Text("Login".toUpperCase()),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.withOpacity(0.7),
                          shape: const RoundedRectangleBorder(),
                        ),
                      ),

                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30, child: Text("OR")),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: OutlinedButton.icon(
                            icon: const Image(image: AssetImage('assets/images/google_icon.png'), width: 20,),
                              label: const Text("Sign in with Google",
                              style: TextStyle(
                                color: Colors.black
                              ),) ,
                              onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                            ),
                          ),
                        )
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
