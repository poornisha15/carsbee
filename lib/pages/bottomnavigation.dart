import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:car_wash/pages/booknow.dart';
import 'package:car_wash/pages/homescreen.dart';
import 'package:car_wash/pages/profilescreen.dart';
import 'package:car_wash/pages/subscription.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _bottomNavIndex = 0;

  //List of the pages
  List<Widget> _widgetOptions(){
    return [
      const HomeScreen(),
      BookNowScreen(),
      Subscriptions(),
       ProfilePage(),
    ];
  }

  //List of the pages icons

  List<IconData> iconList = [
    Icons.home,
    Icons.history,
    Icons.wallet_giftcard,
    Icons.person,
  ];

  // List of the pages titles

  List<String> titleList = [
    "home",
    "Bookings",
    "Subscriptions"
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Colors.black,
        activeColor: Colors.black,
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index){
          setState(() {
            _bottomNavIndex = index;
          });
        }
      ),
    );
  }
}