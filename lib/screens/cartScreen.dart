import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/container_button_model.dart';
import 'payment_method_screen.dart';

class Cartscreen extends StatelessWidget {
  Cartscreen({super.key});

  List<String> images = [
    'images/image15.jpg',
    'images/image12.jpg',
    'images/image14.jpg',
    'images/image6.jpg',
    'images/image11.jpg',


  ];
  List productTitles = [
    'Bracelets',
    'Necklace',
    'Rings Set ',
    'Earrings',
    'Earrings',

  ];

  List prices = [
    '\$200',
    '\$600',
    '\$400',
    '\$250',
    '\$200',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text(
            'Cart',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: BackButton(),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(
                                  value: true,
                                  splashRadius: 20,
                                  activeColor: Colors.amberAccent[400],
                                  onChanged: (val) {}


                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset
                                  (images[index],height: 80,width: 80,fit: BoxFit.cover),

                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(productTitles[index],
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18
                                      ),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Gold One',style: TextStyle(color: Colors.black26,fontSize: 16),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(prices[index],
                                  style: TextStyle(color: Color(0xFFa27553),fontSize: 18,fontWeight: FontWeight.w900),)
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(CupertinoIcons.minus,color: Colors.redAccent[200],),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('1',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                                  SizedBox(
                                    width: 5,
                                  ),

                                  Icon(CupertinoIcons.plus,
                                    color: Color(0xFFa27553)
                                    ),


                                ],
                              )


                            ],
                          ),
                        );
                      },
                    ),
            ),
                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Select all',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                        Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xFFa27553),
                            value: false, onChanged: (val){
                          
                        })
                      ],
                    ),
                  Divider(
                    height: 20,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Payment",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
                      Text("\$300.50",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,color:  Color(0xFFa27553)))

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
                    },
                    child: ContainerButtonModel(bgColor: Color(0xFFa27553), containerWidth: MediaQuery.of(context).size.width, itext: "Checkout"),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                ])
            )
        ));
  }
}
