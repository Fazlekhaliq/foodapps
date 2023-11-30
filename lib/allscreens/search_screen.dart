import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Column(
            
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
                child: Row(

                  children: [
                    Icon(Icons.close,),
                    SizedBox(width: 100,),
                    Text("Search",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),)
                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      height: 55,
                      width: 270,

                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                         decoration: InputDecoration(
                           icon: Icon(Icons.search,),
                           hintText: "Find what you want...",
                           border: InputBorder.none,
                           suffixIcon: Icon(Icons.keyboard_voice_sharp)
                         ),


                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        image: DecorationImage(
                          image: AssetImage("img/filter2.png")
                        )
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent search",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),),
                    Text("Clear all",style: TextStyle(
                      color: Colors.yellow.shade900,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 165,
                      height: 178,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 165,
                              height: 115,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("img/food5.png")
                                )
                              ),
                            ),
                            Text("Dolma With Rice",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),),
                            SizedBox(height: 10,),
                            Text("Bayramoğlu Döner, Rüzgarlıbahçe ",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      width: 165,
                      height: 178,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 165,
                              height: 115,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("img/food6.png")
                                  )
                              ),
                            ),
                            Text("Dolma With Rice",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),),
                            SizedBox(height: 10,),
                            Text("Bayramoğlu Döner, Rüzgarlıbahçe ",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Text("Recommend for you",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal
                ),

                children: [
                  Row(
                    children: [
                      Container(
                        height: 91,
                        width: 91,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/food7.png")
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: [
                            Text("Pumpkin Hummus",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),),
                            Text("Beyti Restaurant, Taksim",style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.green,),

                                Text("4.8",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(width: 10,),
                                Text("(233 ratings),")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 91,
                        width: 91,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/food7.png")
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: [
                            Text("Pumpkin Hummus",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),),
                            Text("Beyti Restaurant, Taksim",style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.green,),

                                Text("4.8",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(width: 10,),
                                Text("(233 ratings),")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 91,
                        width: 91,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/food7.png")
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: [
                            Text("Pumpkin Hummus",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),),
                            Text("Beyti Restaurant, Taksim",style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.green,),

                                Text("4.8",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(width: 10,),
                                Text("(233 ratings),")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 91,
                        width: 91,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/food7.png")
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          children: [
                            Text("Pumpkin Hummus",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),),
                            Text("Beyti Restaurant, Taksim",style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.green,),

                                Text("4.8",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(width: 10,),
                                Text("(233 ratings),")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
            )

              
            ],
          ),
        ),
      ),
    );
  }
}
