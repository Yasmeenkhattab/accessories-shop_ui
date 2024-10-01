import 'package:accessories_shop/screens/cartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'container_button_model.dart';

class ProductDetailsPopup extends StatelessWidget {
  final iStyle =TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w800,
    fontSize: 18,
  );
  List <Color> clrs =[
    Color(0xFFe2b965),
    Color(0xFFbf8039),
    Color(0xFFab6102),
    Color(0xFF965123),




  ];
  // ProductDetailsPopup({super.key,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(context: context, builder: (context)=>Container(
          height: MediaQuery.of(context).size.height/2.5,
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('Size',style: iStyle,),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Color',style: iStyle,),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Total',style: iStyle,),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text("S",style: iStyle,),
                            SizedBox(
                              width: 30,
                            ),
                            Text("M",style: iStyle,),
                            SizedBox(
                              width: 30,
                            ),
                            Text("L",style: iStyle,),
                            SizedBox(
                              width: 30,
                            ),
                            Text("XL",style: iStyle,),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            children: [
                               for(var i =0 ; i < 4; i++)
                                 Container(
                                   margin: EdgeInsets.symmetric(horizontal: 5),
                                   height: 30,
                                   width: 30,
                                   decoration: BoxDecoration(
                                     color: clrs[i],
                                     borderRadius: BorderRadius.circular(20),

                                   ),
                                 )
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text("-",style: iStyle,),
                            SizedBox(
                              width: 20,
                            ),
                            Text("1",style: iStyle,),
                            SizedBox(
                              width: 20,
                            ),
                            Text("+",style: iStyle,),


                          ],
                        ),
                        SizedBox(

                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text('Total Payment',style:iStyle),

                            Text("\$400.00",style:TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold,
                              color:Color(0xFFa27553),
                            )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartscreen()));
                          },
                          child: ContainerButtonModel(bgColor: Color(0xFFa27553), containerWidth: MediaQuery.of(context).size.width/1.7, itext: "Checkout"),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
        );
      },
      child: ContainerButtonModel(bgColor: Color(0xFFa27553), containerWidth: MediaQuery.of(context).size.width/1.5, itext: 'buy Now'),
    );
  }
}
