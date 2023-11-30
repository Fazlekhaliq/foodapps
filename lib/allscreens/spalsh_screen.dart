import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapps/allscreens/Onboarding_screen.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(



          child: Stack(
            children: [
              Align(
                heightFactor: 10,
                  widthFactor: 3,
                  child: Container(


                decoration: BoxDecoration(
                  color: Colors.white10,
                  image: DecorationImage(
                    image: AssetImage("img/1.png"),
                    fit: BoxFit.cover,
                  )

                ),
              )),
              InkWell(
               splashColor: Colors.black,
                focusColor: Colors.black,
                hoverColor: Colors.black,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OnbaordinScreen1()));
                },
                child: Align(
                  heightFactor: 10.3,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 65,
                    width: 295,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text("Get starteed",style: TextStyle(
                        fontSize: 16,
                      ),),
                    ),
                    ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
