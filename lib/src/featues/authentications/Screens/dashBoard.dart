import 'package:flutter/material.dart';
class dashBoard extends StatelessWidget {
  const dashBoard({Key? key}) : super(key: key);

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
