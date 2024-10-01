import 'package:accessories_shop/screens/homeScreen.dart';
import 'package:accessories_shop/screens/intro_page_1.dart';
import 'package:accessories_shop/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_page_2.dart';
import 'intro_page_3.dart';

class Onboardingscreens extends StatefulWidget {
  const Onboardingscreens({super.key});

  @override
  State<Onboardingscreens> createState() => _OnboardingscreensState();
}

class _OnboardingscreensState extends State<Onboardingscreens> {
  PageController _controller = PageController();
  bool onLastPage =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[100],
        body: Stack(children: [
            // page view

      PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
          ]), // PageView

// dot indicators

      Container(
          alignment: Alignment(0, 0.75),

          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
// skip

            GestureDetector(
              onTap: () {
                _controller.jumpToPage(2);
              },
              child: Text('skip',style: TextStyle(color: Color(0xFFa27553),fontSize: 18)),
            ),
                SmoothPageIndicator(controller: _controller, count: 3,
                  effect: ExpandingDotsEffect(
                    // Note that you'll have to change the following properties to match
                    // your design.
                    activeDotColor:  Color(0xFFa27553),
                    dotColor: Colors.grey,
                    dotHeight: 7,
                    dotWidth: 7,
                    expansionFactor: 3,
                  ),
                ),


// next or done

                onLastPage

                    ? GestureDetector(

                  onTap: () {

                    Navigator.push(context,

                        MaterialPageRoute(builder: (context) {

                      return Loginscreen();

                    })); // MaterialPageRoute

                  },

                  child: Text('done',style: TextStyle(color: Color(0xFFa27553),fontSize: 18)),

                ) // GestureDetector

                    : GestureDetector(

                  onTap: () {

                    _controller.nextPage(

                      duration: Duration(milliseconds: 500),

                      curve: Curves.easeIn,

                    );


                  },

                  child: Text('next',style: TextStyle(color:Color(0xFFa27553),fontSize: 18),),

                ), // GestureDetector

          ])
      )
    ])
        // GestureDetector
        );
  }
}
