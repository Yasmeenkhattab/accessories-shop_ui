import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:accessories_shop/screens/HomeScreen.dart';
import 'package:accessories_shop/screens/cartScreen.dart';
import 'package:accessories_shop/screens/favoriteScreen.dart';
import 'package:accessories_shop/screens/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex =0;
  // void ItemTap(int index){
  //   setState(() {
  //  pageIndex= index;
  //   });
  // }
  List<Widget> pages =[

    Homescreen(),
    Cartscreen(),
    FavoriteScreen(),
    ProfileScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
    child: Icon(Icons.qr_code),
          backgroundColor: Color(0xFFa27553),

          onPressed:() {},

        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(icons: [
         CupertinoIcons.home,
         CupertinoIcons.cart,
         CupertinoIcons.heart,
         CupertinoIcons.profile_circled,

      ],

        notchSmoothness: NotchSmoothness.softEdge,
          activeIndex: pageIndex, inactiveColor: Colors.black, gapLocation: GapLocation.center,
        // iconSize: 30,
backgroundColor: Colors.orange[100],
        onTap: (index) {
          setState(() {
            pageIndex= index;
          });
        },
      activeColor:Color(0xFFa27553),

      ),
    );
  }
}
