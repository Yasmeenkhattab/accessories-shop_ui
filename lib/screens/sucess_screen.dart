

import 'package:flutter/material.dart';

import '../widget/container_button_model.dart';
import 'navigationScreen.dart';
class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset('images/cnfirm.png',height: 250,),
              SizedBox(height: 15,),
              Text("Success!",style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.w600,letterSpacing: 1),),
              SizedBox(height: 20,),
              Text("Your Order will be delivered soon",
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w500,letterSpacing: 1),),
              Text("Thank You! for choosing our app.",
                style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w500,letterSpacing: 1),),

            ],
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>NavigationScreen(),
                  ),);
              },
              child: ContainerButtonModel(itext: 'Continue Shopping',
                containerWidth: MediaQuery.of(context).size.width,
                bgColor:Color(0xFFa27553),),
            ),
          )
        ],
      ),
    );
  }
}