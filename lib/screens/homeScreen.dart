import 'dart:core';

import 'package:flutter/material.dart';

import 'productScreen.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  List tabs = ['All', 'Category', 'Top', 'Recommended'];
  List imageList = [
    'images/image15.jpg',
    'images/image12.jpg',
    'images/image14.jpg',
    'images/image6.jpg',
    'images/image11.jpg',
    'images/image8.jpg',
    'images/image1.jpg',
    'images/image4.jpg',

  ];
  List productTitles = [
    'Bracelets',
    'Layered Necklace',
    'Plated Rings Set ',
    'Gold Earrings',
    'Earrings',
    'Necklace',
    'Layered Bracelets',
    'Gold Watch',
  ];

  List prices = [
    '\$200',
    '\$600',
    '\$400',
    '\$250',
    '\$200',
    '\$300',
    '\$500',
    '\$700',
  ];

  List reviews = [
    "155",
    "120",
    "345",
    "80",
    "300",
    "250",
    "85",
    "150",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[100],
        body: SingleChildScrollView(
            child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 15.0, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.4,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.05),

                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFFa27553),
                        ),
                        border: InputBorder.none,
                        label: Text(
                          'Find your product',
                          style: TextStyle(),
                        )),
                  ),
                ),
                // SizedBox(
                //   width: 15,
                // ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.05),

                  ),
                  child: Center(
                    child: Icon(
                      Icons.notifications,
                      color: Color(0xFFa27553),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: Colors.orange[100],

                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset('images/freed.jpg', ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: tabs.length,
                  itemBuilder: (context, index) {
                    return FittedBox(
                      child: Container(
                        height: 42,
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: FittedBox(
                            child: Text(
                              tabs[index],
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 230,
              child: ListView.builder(
                  itemCount: imageList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 180,
                            width: 150,
                            child: Stack(
                              children: [
                                InkWell(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      imageList[index],
                                      fit: BoxFit.cover,
                                      height: 180,
                                      width: 150,
                                    ),
                                  ),
                                  onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Productscreen();
                                  }));
                                  },
                                ),
                                Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Icon(
                                        Icons.favorite,
                                        color: Color(0xFFa27553),
                                      )),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8 ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              productTitles[index],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            SizedBox(
                              width: 120,
                                child: Text('Add a touch of luxury to your collection with our stunning handcrafted gold necklace, featuring a delicate design that exudes elegance. This timeless piece is perfect for layering or wearing alone, making it versatile for any occasion',maxLines: 6,overflow: TextOverflow.ellipsis,)),
                                SizedBox(
                                  height: 7,
                                ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Text('(' + reviews[index] + ')'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  prices[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color:  Color(0xFFa27553)),
                                ),
                              ],
                            ),
                                                    ],
                                                  ),
                          ),
                      ]
                      )
                    );
                  }),
            ),
            // SizedBox(
            //   height: 1,
            // ),

            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Newest Product',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20,
            ),

            GridView.builder(
              shrinkWrap: true,
              itemCount: productTitles.length,
              physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount: 2,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 2

                ),


                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 180,
                          width: 150,
                          child: Stack(
                            children: [
                              InkWell(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    imageList[index],
                                    fit: BoxFit.cover,
                                    height: 180,
                                    width: 150,
                                  ),
                                ),
                                onTap: () {},
                              ),
                              Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color(0xFFa27553),
                                        )),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          productTitles[index],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 22,
                            ),
                            Text('(' + reviews[index] + ')'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              prices[index],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:  Color(0xFFa27553)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    )));
  }
}
