import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/firebase_auth_controller.dart';
import '../core/exceptions.dart';
import '../core/functions.dart';
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffFBF3EF),

      appBar:
      AppBar(

        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: IconButton(icon:Icon(Icons.menu),
          onPressed: (){


          }
          ),
        ),

        title: Text("CourseGuide"),
        centerTitle: true,

        elevation: 3,
        titleSpacing: 0,
        backgroundColor: Colors.blue.withOpacity(0.3),
        actions: [
          Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
            ),
            child: Transform.scale(
              scale: 0.7, // Set the desired scale value for the size increase
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: () {},
                  iconSize: 40, // Set the original size of the icon
                  icon: Image(
                    image: AssetImage('assets/images/profile_icon.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Username'), // Replace with the actual username
              accountEmail: Text('user@example.com'), // Replace with the actual email
              currentAccountPicture: CircleAvatar(
                // backgroundImage: NetworkImage(userImageUrl),
                child: IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                  },
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue, // Customize the background color of the header
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("DashBoard"),
              onTap: () {
                // Handle onTap action
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline_rounded),
              title: Text("Profile"),
              onTap: () {
                // Handle onTap action
              },
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text("Feed Back"),
              onTap: () {
                // Handle onTap action
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () async {
                try {
                  final firebaseController = Get.put(FirebaseAuthController());
                  await firebaseController.signOut();
                  showToast("Success", "Logged out successfully");
                  Get.delete<FirebaseAuthController>();
                  Get.offAllNamed('/');
                } catch (e) {
                  String errorMessage = handleExceptionError(e);
                  showToast('Error', errorMessage);
                  Get.back();
                }                // Handle onTap action
              },
            ),
          ],
        ),
      ),

      body:
      SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.all(23),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Search for Courses",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black.withOpacity(0.5)
              ),),
              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

                decoration: BoxDecoration(
                  border: Border( left: BorderSide(width: 3,color: Colors.red.withOpacity(0.7)) ),
                ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("Search...",
                    style: TextStyle(color:Colors.grey.withOpacity(0.5),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
                    ),
                   const Icon(Icons.search_outlined)
                  ],
                ),
              )
            ],
          ),


        ),
      ),
    );
  }
}
