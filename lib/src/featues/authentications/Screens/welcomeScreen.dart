
import 'package:course_guide_app/src/featues/authentications/Screens/login.dart';
import 'package:course_guide_app/src/featues/authentications/Screens/signup.dart';
import 'package:course_guide_app/src/featues/authentications/google_authentication.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
class welcomeScreen extends StatelessWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF3EF),
      extendBodyBehindAppBar: true,

      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/welcomelogo.png")),
           /* Text(
              "Course Guide",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),*/
            SizedBox(height: 0.0),
            Text(
              "Find the Best Suitable Course for you, Find courses on a single search",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 99.0),

            SizedBox(
              width: double.infinity,
              height: 45,
              child: OutlinedButton.icon(
                icon: Image(image: AssetImage('assets/images/google_icon.png'), width: 24,),
                label: Text("Continue with Google",
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 15
                  ),) ,
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                    side: BorderSide(width: 0.4,color: Colors.black)
                ),
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: OutlinedButton.icon(
                icon: Image(image: AssetImage('assets/images/facebook_icon.png'), width: 30,),
                label: Text("Continue with Facebook",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ),) ,
                onPressed: (){},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    side: BorderSide(width: 0.4,color: Colors.black)
                ),
              ),
            ),


            SizedBox(height: 20),
                    Text("OR"),
            SizedBox(height: 20),
                   Container(
                     width: double.infinity,
                     height: 45,
                     child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => login());
                      },
                      child: Text("Login with Email".toUpperCase()),

                      style: ElevatedButton.styleFrom(

                        shape: RoundedRectangleBorder(),
                        backgroundColor: Colors.red.withOpacity(0.7),
                        foregroundColor: Colors.white,

                      ),

                  ),
                   ),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(() => SignupPage());
                },
                child: Text(
                  "dont't have an account? Sign up",
                  style: TextStyle(
                    color: Colors.redAccent.withOpacity(0.6),
                  ),
                ),
              ),
            ),
                SizedBox(height: 60,),
                Text("By creating an account, You accept CourseGuide's",
                style: TextStyle(fontSize: 12),),

               Center(
                 child: TextButton(onPressed:(){

                  },
                      child: Text("Terms of Services and Policies",
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                     color: Colors.black.withOpacity(0.6),
                     height: -0.5,
                 )
                      ),
                 ),
               )
              ],


        ),
      ),





    );

  }
}
