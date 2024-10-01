
import 'package:accessories_shop/screens/productScreen.dart';
import 'package:flutter/material.dart';
class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);



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

  List reviews = [
    "155",
    "120",
    "345",
    "80",
    "300",

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: Text("Favorite"),
        centerTitle: true,
        backgroundColor: Colors.orange[100],
        foregroundColor: Colors.black,
        elevation: 0,
        actions: const[
          Padding( padding: const EdgeInsets.all(15),
            child: Icon(Icons.search),
          )],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(25),
        child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
               // margin: EdgeInsets.only(right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Productscreen(),
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(images[index]),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Icon(Icons.favorite,
                                  color: Color(0xFFa27553),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text(productTitles[index],
                          style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 10,),
                        Row(children: [
                          Text('('+ reviews[index]+ ')'),
                          Icon(Icons.star,size: 20,color: Colors.amber,),
                          Icon(Icons.star,size: 20,color: Colors.amber,),
                          Icon(Icons.star,size: 20,color: Colors.amber,),
                          // Icon(Icons.star,size: 20,color: Colors.amber,),
                          // Icon(Icons.star,size: 20,color: Colors.amber,),
                        ],
                        ),

                        SizedBox(height: 10,),
                        SizedBox(width: 100,
                          child: Text("Add a touch of luxury to your collection with our stunning handcrafted gold necklace, featuring a delicate design that exudes elegance. This timeless piece is perfect for layering or wearing al. ",maxLines: 3,
                            overflow:TextOverflow.ellipsis ,
                            style:TextStyle(fontSize:17,),
                          ),
                        ),
                        SizedBox(height: 10,),

                        Text(prices[index],
                          style:TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,color: Color(0xFFa27553),),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),

                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}