import 'package:accessories_shop/widget/product_details_popup.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Productscreen extends StatelessWidget {
  Productscreen({super.key});
  List<String> images = [
    'images/image15.jpg',
    'images/image12.jpg',
    'images/image14.jpg',
    'images/image6.jpg',
    'images/image11.jpg',
    'images/image8.jpg',
    'images/image1.jpg',
    'images/image4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: FanCarouselImageSlider.sliderType1(
                  imagesLink: images,
                  isAssets: true,
                  autoPlay: true,
                  sliderHeight: 400,
                  showIndicator: true,
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bracelets',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black87),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Gold One',
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),

                    ],
                  ),
                  Text(
                    '\$350.00',
                    style: TextStyle(fontSize: 18, color: Color(0xFFa27553),fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Align(
                alignment: Alignment.centerLeft,
                  child:
              Text('Add a touch of luxury to your collection with our stunning handcrafted gold necklace, featuring a delicate design that exudes elegance. This timeless piece is perfect for layering or wearing alone, making it versatile for any occasion.',style: TextStyle(fontSize: 16,color:Colors.black87),)),


              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0x1F989797),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(child: Icon(Icons.shopping_cart,color: Color(0xFFa27553),)) ,
                  ),
                  ProductDetailsPopup()

                ]

              )
            ],
          ),
        )),
      ),
    );
  }
}
