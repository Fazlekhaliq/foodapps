import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:foodapps/allscreens/Order_screen.dart';
import 'package:foodapps/order/orderitem.dart';

import '../zoomingdrwaer/drwaerwiget.dart';


class HomeScreen extends StatefulWidget {
  final String? title;
  const HomeScreen({Key? key,  this.title}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        



        body: SingleChildScrollView(
          child: Column(


            children: [

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(


                 children: [
                   InkWell(
                     onTap:(){
                       ZoomDrawer.of(context)!.toggle();

                     },
                     child: Container(
                       height: 60,
                       width: 60,
                       decoration: BoxDecoration(
                         color: Colors.grey,
                         image: DecorationImage(
                           image: AssetImage("img/dra.png"),
                           fit: BoxFit.cover,
                         ),
                         shape: BoxShape.circle,
                       ),

                     ),
                   ),
                 Row(

                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 12.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Hello, Fazle Khaliq",style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                           ),),
                           SizedBox(height: 5,),
                           Text("kpk, peshawer")
                         ],
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 11.0),
                       child: Row(

                         children: [
                           InkWell(
                             onTap:(){

                     },
                             child: Container(
                               height: 40,
                                 width: 40,
                                 decoration: BoxDecoration(
                                   color: Colors.grey.shade300,
                                   shape: BoxShape.circle,
                                   image: DecorationImage(
                                     image: AssetImage("img/noti.png")
                                   )
                                 ),
                                 ),
                           ),
                           SizedBox(width: 5,),
                           Container(
                               height: 40,
                               width: 40,
                               decoration: BoxDecoration(
                                   color: Colors.grey.shade300,
                                   shape: BoxShape.circle
                               ),
                               child: Icon(Icons.shop,color: Colors.green,size: 15,)),
                         ],
                       ),
                     )
                   ],
                 )
               ],),
             ),
              Container(
                height: 119,
                width: 346,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("#eatwelleveryday",style: TextStyle(
                                fontSize: 7,
                                color: Colors.white,

                              ),),
                              SizedBox(height: 10,),
                              Text("Do you have a 70% "
                                 ,style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,


                              ),),
                              SizedBox(height: 10,),
                              Text(
                                  "off meal coupon!",style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,


                              ),),
                              SizedBox(height: 10,),
                              Text("Promo period 4 - 28 Apr 2023",style: TextStyle(
                                fontSize: 8,
                                color: Colors.yellow,
                              ),)


                            ],
                          ),
                        ),
                        Container(
                          height: 115,
                          width: 140,

                          decoration: BoxDecoration(

                            image: DecorationImage(
                              image: AssetImage("img/group.png",),
                              fit: BoxFit.cover,
                              opacity: 12,
                            )
                          ),
                        ),

                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                        width: 280,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(30),
                        ),

                        child: TextField(
                          controller: textEditingController,

                          decoration: InputDecoration(
                            hintText: 'Find what you want...',
                            // Add a clear button to the search bar

                            // Add a search icon or button to the search bar
                            prefixIcon: IconButton(
                              icon: Icon(Icons.search,size: 40,color: Colors.yellow.shade900,),
                              onPressed: () {
                                // Perform the search here
                              },
                            ),
                           border: OutlineInputBorder(
                             borderSide: BorderSide.none,

                           )
                          ),
                        )
                    ),
                    SizedBox(width: 12,),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        image: DecorationImage(
                          image: AssetImage("img/Filter.png"),
                        ),
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Special Offer",style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                    Text("See more",style: TextStyle(
                      color: Colors.yellow.shade900,
                      fontSize: 11,
                    ),)
                  ],
                ),
              ),
              Container(
                height: 230,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,


                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height* 0.7,
                          width: 170,
                          decoration: BoxDecoration(


                          ),
                          child: Stack(
                            children: [
                              Align(
                                child: Container(
                                  height: 190,
                                  width: 170,

                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(20)
                                  ),

                                ),
                              ),
                              InkWell(
                                onTap: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>OrderItem()));
                                },
                                child: Align(
                                  alignment: Alignment.topCenter,

                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("img/food1.png")
                                      )
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0,
                                vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("Yakisoba Noodles",style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    SizedBox(height: 6,),
                                    Text("Noodle with Pork",style: TextStyle(
                                      fontSize: 10,

                                    ),),
                                    SizedBox(height: 6,),
                                    Text("1000 PKR",style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,

                                    ),)

                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("img/btmicon.png")
                                    )
                                  ),
                                ),
                              )

                            ],
                          ),

                        ),
                      );

                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 Text("Recommended for you",style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                 ),),
                  Text("See more",style: TextStyle(
                    fontSize: 11,
                    color: Colors.redAccent,
                  ),)
                ],),
              ),
              Container(
                height: 230,
                width: double.infinity,
                color: Colors.white,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,


                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height* 0.7,
                          width: 170,
                          decoration: BoxDecoration(


                          ),
                          child: Stack(
                            children: [
                              Align(
                                child: Container(
                                  height: 190,
                                  width: 170,

                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(20)
                                  ),

                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,

                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("img/food1.png")
                                      )
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0,
                                    vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10,),
                                    Text("Yakisoba Noodles",style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    SizedBox(height: 6,),
                                    Text("Noodle with Pork",style: TextStyle(
                                      fontSize: 10,

                                    ),),
                                    SizedBox(height: 6,),
                                    Text("1000 PKR",style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,

                                    ),)

                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("img/btmicon.png")
                                      )
                                  ),
                                ),
                              )

                            ],
                          ),

                        ),
                      );

                    }),
              ),


            ],
          ),
        ),
      ),
    );
  }

}
