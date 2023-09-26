import 'package:course_guide/controllers/firebase_auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package

class CourseDetailPage extends StatelessWidget {
  CourseDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    if (arguments != null) {
      final courseTitle = arguments['courseTitle'];
      final courseSummary = arguments['courseSummary'];
      final courseURL = arguments['courseURL']; // Add this line to get the course URL
      final firebaseAuthController = Get.put(FirebaseAuthController());

      return Scaffold(
        appBar: AppBar(
          title: Text(
            'CourseGuide',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 3,
          titleSpacing: 0,
          backgroundColor: Colors.white,
          // Leading, actions, and other app bar settings can be added here
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Title:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF37474F),
                  ),
                ),
                Text(
                  courseTitle,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10), // Add spacing between title and summary
                Text(
                  'Summary:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF37474F),
                  ),
                ),
                Text(
                  courseSummary,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF607D8B),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent.withOpacity(0.7),
                            shape: const RoundedRectangleBorder(),
                            textStyle: TextStyle(color: Colors.black),
                          ),
                          onPressed: () async {
                            if (await canLaunch(courseURL)) {
                              await launch(courseURL);
                            } else {
                              print('Could not launch $courseURL');
                            }
                          },
                          child: Text('Enroll Course'),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            firebaseAuthController.saveCourse(courseTitle, courseSummary, courseURL);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red.withOpacity(0.7),
                            shape: const RoundedRectangleBorder(),
                            textStyle: TextStyle(color: Colors.white),
                          ),
                          child: Text('Save Course'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      // Handle the case where arguments are missing
      return Scaffold(
        appBar: AppBar(
          title: Text('Course Details'),
        ),
        body: Center(
          child: Text('Course details are missing.'),
        ),
      );
    }
  }
}
