import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange[100],
        ),
        child: Image.asset(
          'images/splach1.png',
        ),

      ),
    );
      // child :Center(
      //
      // child: Image.asset('images/splach1.png'),
      // )

   // );
  }
}
