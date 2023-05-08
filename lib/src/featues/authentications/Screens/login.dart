import 'package:course_guide_app/src/featues/authentications/Screens/dashBoard.dart';


import 'package:flutter/material.dart';


class login extends StatelessWidget {

  login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFBF3EF),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(

              children: [
                SizedBox(height: 40,),
                Image(image: AssetImage("assets/images/welcomelogo.png"),width: size.width* 0.9, height: size.height * 0.16,),
                SizedBox(height: 10,),
                Text("Welcome Back ".toUpperCase(),
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Login to Your Account"),
                SizedBox(height: 50,),
                Form(child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(

                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_outline_rounded),
                        labelText: "Email",
                        hintText: "Enter Your Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(


                      decoration: const InputDecoration(

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
                          child: Text(
                            "Forgot Password?"
                          )),
                    ),
                    SizedBox(width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {

                        },
                        child: Text("Login".toUpperCase()),
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
                              ),) ,
                              onPressed: (){},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(),
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
