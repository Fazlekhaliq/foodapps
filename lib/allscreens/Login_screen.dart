import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapps/allscreens/buttomNav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
              child: Container(

                height: 195,
                width: 195,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage("img/login.png"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Text("Login",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,

                      ),),
                      SizedBox(height: 10,),
                      Container(
                        height: 2.5,
                        width: 126.0,
                        color: Colors.yellow[900],

                      ),
                    ],
                  ),
                  Text("Sign-up",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,

                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.redAccent),
                    hintText: "Email address",



                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.redAccent),
                  hintText: "Password",



                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Forgot passcode?",style: TextStyle(
                color: Colors.yellow.shade600,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtomNav()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  width: 295,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade600
                      ,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Text("Login",style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
