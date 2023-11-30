import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapps/allscreens/home_page.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                  image: AssetImage("img/page3.png"),
                  fit: BoxFit.cover
              )
          ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [

              Text("Get started on Ordering your Food",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,


              ),),
              SizedBox(height: 10,),
              Text("Please create an account or sign in to your existing account to start browsing our selection of delicious meals from your favorite restaurants.",style: TextStyle(
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
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Container(
                        height: 63,
                        width: 153,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)
                          ,                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Continue",style: TextStyle(fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),),
                            Icon(Icons.arrow_forward_ios,color: Colors.white,)
                          ],
                        )
                    ),
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
