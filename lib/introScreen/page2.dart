import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Container(
            height: 173,
            width: 392,
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: AssetImage("img/page2.png"),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        SizedBox(height: 60,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [

              Text("Free Deliveries for"
                  " ONE MONTH!!",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,


              ),),
              SizedBox(height: 10,),
              Text("Get your favorite meals delivered to your doorstep for free with our online food delivery app - enjoy a whole month of complimentary delivery!",style: TextStyle(
                color: Colors.red,
                fontSize: 17,
              ),),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 63,
                    width: 153,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    ),
                    child: Center(child: Text("Skip",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),)),
                  ),
                  Container(
                      height: 63,
                      width: 153,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10)
                        ,                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Next",style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                          Icon(Icons.arrow_forward_ios,color: Colors.white,)
                        ],
                      )
                  )
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 3,
                  width: 150.0,
                  color: Colors.black,
                  margin: EdgeInsets.only(bottom: 25.0),
                ),
              ),
            ],


          ),
        )
      ],

    );
  }
}
