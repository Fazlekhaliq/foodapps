import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapps/allscreens/Order_screen.dart';
import 'package:foodapps/allscreens/Profile_Screen.dart';

import 'package:foodapps/allscreens/search_screen.dart';

import 'HomeScreen.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({Key? key}) : super(key: key);

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  var _selectedindex=0;
  void _navigationBottomBar(int index){
    setState(() {

      _selectedindex=index;

    });
  }
  final List<Widget>_children=[
    HomeScreen(),
    SearchScreen(),

    OrderScreen(),
    ProfileScreen(),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
         onTap: _navigationBottomBar,
         type: BottomNavigationBarType.fixed,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
           BottomNavigationBarItem(icon: Icon(Icons.drive_eta),label: 'Drive thru'),
           BottomNavigationBarItem(icon: Icon(Icons.bookmarks_sharp),label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.person_pin),label: 'Profile'),
          
      ],
      ),
    );
  }
}
