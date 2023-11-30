import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: SingleChildScrollView(
         child: Column(

           children: [
             Container(
               height: 300,
               width: 390,
               decoration: BoxDecoration(
                 color: Colors.green.shade300,
               ),
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Icon(Icons.arrow_back_ios_new_sharp,),
                         Text("My Order",style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w500,
                         ),),
                         Icon(Icons.add),
                       ],
                     ),
                   ),
                   SizedBox(height: 20,),
                   Container(
                     height: 227,
                     width: 227,
                     decoration: BoxDecoration(

                       image: DecorationImage(
                         image: AssetImage("img/food2.png"),
                         fit: BoxFit.cover,

                       ),
                       shape: BoxShape.circle,
                     ),
                   )
                 ],
               ),
             ),
             SizedBox(height: 10,),
             SmoothPageIndicator(
               effect: WormEffect(
                 dotColor: Colors.green,
                 dotWidth: 8,
                 dotHeight: 8
               ),

                 controller: pageController, count: 4),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Yakisoba Noodles",style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.w600,
                   ),),
                   Icon(Icons.favorite_border,size: 40,color: Colors.green.shade900,)
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12.0,),
               child: Row(
                 children: [
                   Text("1000,PKR",style: TextStyle(
                     fontWeight: FontWeight.w600,
                     fontSize: 18,
                     color: Colors.yellow.shade600,
                   ),),
                   SizedBox(width: 30,),
                   Text("1400,PKR",style: TextStyle(
                     fontWeight: FontWeight.w600,
                     fontSize: 16,
                     color: Colors.grey,
                     decoration: TextDecoration.lineThrough,
                   ),

                   ),

                 ],
               ),
             ),
             Divider(

             ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Add more",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/food3.png")
                        )
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text("Cold Drink Coca cola",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),),
                    SizedBox(width: 30,),
                    Text("100 PKR"),
                    SizedBox(width: 30,),
                    Icon(Icons.not_started_outlined,color: Colors.green,)
                  ],
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/food4.png")
                            )
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text("Prawn Fried Rice",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),),
                      SizedBox(width: 45,),
                      Text("100 PKR"),
                      SizedBox(width: 35,),
                      Icon(Icons.not_started_outlined,color: Colors.green,)
                    ],
                  ),
                ),
                Divider(

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Package",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("img/box.png")
                              )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text("Package box cost",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("50 PKR",style: TextStyle(
                            fontSize: 12
                          ),),
                          SizedBox(width: 10,),
                          Icon(Icons.not_started_outlined,color: Colors.green,)
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                      child: Container(
                        width: 140,
                        height: 59,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.remove_circle,color: Colors.green,),
                              Text("1",style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,

                              ),),
                              Icon(Icons.add_circle_outlined,color: Colors.green,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 59,
                      width: 182,
                      decoration: BoxDecoration(
                       color: Colors.yellow.shade900,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text("Order",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white,
                        ),),
                      ),
                    )
                  ],
                )
              ],
            )
           ],
         ),
       ),
      ),
    );
  }
}
