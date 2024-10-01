import 'dart:async';

import 'package:accessories_shop/screens/homeScreen.dart';
import 'package:accessories_shop/screens/onboardingScreens.dart';
import 'package:flutter/material.dart';

class Splachscreen extends StatefulWidget {
  const Splachscreen({super.key});

  @override
  State<Splachscreen> createState() => _SplachscreenState();
}

class _SplachscreenState extends State<Splachscreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3,),()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Onboardingscreens())));
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange[100],
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(

    image: new DecorationImage(
 image:
 AssetImage('images/first.jpg',),
      fit: BoxFit.cover,
      opacity: 0.5
    ),
          color: Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/second.png',height: 320,width: 320,
              color: Colors.orange[100])
             // ),
            // Icon(Icons.shopping_cart,
            // size:200,
            //   color: Color(0xFF3E2723),


           // ),
           // Text('Jewellery Store ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 30),)

          ],
        ),
      ),
    );
  }
}
