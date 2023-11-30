import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
              image: AssetImage("img/page1.png"),
              fit: BoxFit.cover
            )
          ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [

              Text("Wide range of Food"
                  " Categories & more",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,


              ),),
              SizedBox(height: 10,),
              Text("Browse through our extensive list of"
                  " restaurants and dishes, and when you're ready"
                  " to order, simply add your desired items to your "
                  "cart and checkout. It's that easy!",style: TextStyle(
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
