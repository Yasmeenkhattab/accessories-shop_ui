import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset('images/avatarprofile.png',height: 100,),
                  SizedBox(height: 15,),
                  Text("Karla",style: TextStyle(fontSize: 22,
                      fontWeight: FontWeight.w600,letterSpacing: 1),),
                  SizedBox(height: 5,),
                  Text("25678978",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w400,letterSpacing: 1),),
                  Text("Karlahassan@gmail.con",
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w400,letterSpacing: 1),),

                ],
              ),

              Padding(
                padding: const EdgeInsets.only(right: 22,left: 22,top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFEF3D5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.history,color:Color(0xFFa27553) ,),
                        SizedBox(width: 15,),
                        Text("Order History",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        SizedBox(width: 16,),
                        Icon(Icons.arrow_forward_ios,color:Color(0xFFa27553) ,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 22,left: 22,top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFEF3D5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.location_on_sharp,color:Color(0xFFa27553) ,),
                        SizedBox(width: 15,),
                        Text("Shipping Address",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        SizedBox(width: 16,),
                        Icon(Icons.arrow_forward_ios,color:Color(0xFFa27553) ,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 22,left: 22,top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFEF3D5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.policy_outlined,color:Color(0xFFa27553) ,),
                        SizedBox(width: 15,),
                        Text("Privacy Policy",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        SizedBox(width: 16,),
                        Icon(Icons.arrow_forward_ios,color:Color(0xFFa27553) ,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 22,left: 22,top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFEF3D5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.settings,color:Color(0xFFa27553) ,),
                        SizedBox(width: 15,),
                        Text("Settings",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        SizedBox(width: 16,),
                        Icon(Icons.arrow_forward_ios,color:Color(0xFFa27553) ,),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 22,left: 22,top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFEF3D5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.logout,color:Color(0xFFa27553) ,),
                        SizedBox(width: 15,),
                        Text("Log Out",
                          style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                        SizedBox(width: 16,),
                        Icon(Icons.arrow_forward_ios,color:Color(0xFFa27553),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}