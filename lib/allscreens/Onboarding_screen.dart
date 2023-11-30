import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapps/introScreen/page1.dart';
import 'package:foodapps/introScreen/page2.dart';
import 'package:foodapps/introScreen/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbaordinScreen1 extends StatefulWidget {
  const OnbaordinScreen1({Key? key}) : super(key: key);

  @override
  State<OnbaordinScreen1> createState() => _OnbaordinScreen1State();
}

class _OnbaordinScreen1State extends State<OnbaordinScreen1> {

  PageController controller=PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: controller,
              children: [
               Page1(),
                Page2(),
                Page3(),



              ],
            ),
            Positioned(
                left: 25,
                top: 320,

                child: SmoothPageIndicator(
                  effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: Colors.yellow
                  ),


                    controller: controller, count: 3)),

          ],
        )

      ),
    );
  }
}
