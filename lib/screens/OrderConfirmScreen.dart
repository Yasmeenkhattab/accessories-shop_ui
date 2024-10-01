import 'package:accessories_shop/screens/payment_method_screen.dart';
import 'package:accessories_shop/screens/shipping_screen.dart';
import 'package:flutter/material.dart';

import '../widget/container_button_model.dart';
import 'sucess_screen.dart';

class Orderconfirmscreen extends StatelessWidget {
  const Orderconfirmscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: Text(
          'Confirm Order',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Shipping Address',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 110,
                decoration: BoxDecoration(
                    color: Color(0xFFFEF3D5),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 4, spreadRadius: 2)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dear Client',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShippingScreen()));
                            },
                            child: Text('Change',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xFFa27553)))),
                      ],
                    ),
                    Text(
                      '3 Newbridge Court',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Chino Hills, CA 97578, United States',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment Method',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
                      },
                      child: Text('Change',
                          style: TextStyle(
                              fontSize: 18, color: Color(0xFFa27553)))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFFEF3D5), blurRadius: 4, spreadRadius: 2)
                        ]),
                child: Image.asset('images/mastercard.png') ,
                    ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("**** **** **** 3947")
                ],

              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery Method',
                      style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)
                  ),

                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFFEF3D5), blurRadius: 4, spreadRadius: 2)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Image.asset('images/icon3.png',height: 25,),
                      Text('2-7 Days')
                    ] ,
                  ),

                  ),
                    SizedBox(
                     width: 20,
                    ),
                  Container(
                    height: 60,
                    width: 130,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFFEF3D5), blurRadius: 4, spreadRadius: 1)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[

                        Text('Home Delivery',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.indigo),),
                        Text('2-7 Days'),
                      ] ,
                    ),

                  ) ,
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sub -Total',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.grey),),
                  Text('\$300.50',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),


                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping fee',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.grey),),
                  Text('\$150.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),


                ],
              ),
              Divider(
                height: 30, color: Colors.black,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total payment',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,),),
                  Text('\$450.50',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0xFFa27553)),),


                ],
              ),
              SizedBox(
                height: 60,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderSuccessScreen()));
                  },
                  child: ContainerButtonModel(bgColor: Color(0xFFa27553), containerWidth: MediaQuery.of(context).size.width, itext: "Confirm Order")),




            ],
          ),
        )),
      ),
    );
  }
}
