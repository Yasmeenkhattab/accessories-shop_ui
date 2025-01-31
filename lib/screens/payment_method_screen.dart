import 'package:accessories_shop/screens/shipping_screen.dart';
import 'package:flutter/material.dart';

import '../widget/container_button_model.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type =1;
  void _handleRadio(Object? e)=> setState(() {
    _type =e as int;
  });
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: Text(
          'Payment Method',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
                          
                            border: _type==1 
                         ? Border.all(width: 1,color:Color(0xFFa27553))
                            : Border.all(width: 0.3,color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent,
                        ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Radio(value: 1, groupValue: _type, onChanged: _handleRadio,activeColor:Color(0xFFa27553)),
                                  Text("Amazon Pay",style: _type==1
                                      ?TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color: Colors.black
                                  ) : TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color:Colors.grey),
                                  ),
        
                                ],
                              ),
        
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Image.asset('images/amazonpay.png',width: 70,height: 70,fit: BoxFit.cover,),
                              )
        
                            ],
                          ),
                        ),
                      ),
                      ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
        
                        border: _type==2
                            ? Border.all(width: 1,color: Color(0xFFa27553))
                            : Border.all(width: 0.3,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Radio(value: 2, groupValue: _type, onChanged: _handleRadio,activeColor:Color(0xFFa27553)),
                                  Text("Credit Card",style: _type==2
                                      ?TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color: Colors.black
                                  ) : TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color:Colors.grey),
                                  ),
        
                                ],
                              ),
                              Spacer(),
        
                              Image.asset('images/visapay.png',width: 35,fit: BoxFit.cover,),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset('images/mastercard.png',width: 35,fit: BoxFit.cover,),
        
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
        
                        border: _type==3
                            ? Border.all(width: 1,color: Color(0xFFa27553))
                            : Border.all(width: 0.3,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Radio(value: 3, groupValue: _type, onChanged: _handleRadio,activeColor: Color(0xFFa27553)),
                                  Text("Paypal",style: _type==3
                                      ?TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color: Colors.black
                                  ) : TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color:Colors.grey),
                                  ),
        
                                ],
                              ),
        
                              Image.asset('images/paypal.png',width: 80,height: 80,
                                // fit: BoxFit.contain,
                              )
        
                            ],
                          ),
                        ),
                      ),
                    ),
        
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: size.width,
                      height: 55,
                      decoration: BoxDecoration(
        
                        border: _type==4
                            ? Border.all(width: 1,color:  Color(0xFFa27553))
                            : Border.all(width: 0.3,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Radio(value: 4, groupValue: _type, onChanged: _handleRadio,activeColor: Color(0xFFa27553)),
                                  Text("Google Pay",style: _type==4
                                      ?TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color: Colors.black
                                  ) : TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.w500,color:Colors.grey),
                                  ),
        
                                ],
                              ),
        
                              Image.asset('images/icon2.png',width: 50,height: 50,
                                //fit: BoxFit.cover,
                              )
        
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
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
                      height: 70,
                    ),
                     InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>ShippingScreen()));
                         },
                         child: ContainerButtonModel(bgColor: Color(0xFFa27553), containerWidth: MediaQuery.of(context).size.width, itext: "Confirm Payment")),
        
        
        
                  ],
                ),
              ),
        )),
      ),
    );
  }
}
