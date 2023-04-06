import 'package:car_wash/onboard/signin.dart';
import 'package:car_wash/pages/profilescreen.dart';
import 'package:car_wash/pages/subscription.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.grey[100],
      child: Column(
          children: [
            UserAccountsDrawerHeader(decoration: BoxDecoration(
              color: Colors.grey
            ),
              currentAccountPictureSize: Size.square(70),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person,
                size: 70,),
              ),
              accountName:Text("pooja",
              style: TextStyle(fontSize: 24,color: Colors.black),),
              accountEmail:Text("Pooja@gmail.com",
              style: TextStyle(fontSize: 24,color: Colors.black),),),
          
       ListTile(
         leading: Icon(Icons.home),
         title: Text('Home'),
         onTap: () {
           Navigator.pop(context);
         },
       ),
       ListTile(
         leading: Icon(Icons.person),
         title: Text('Profile'),
         onTap: () {
           Navigator.push(context, 
           MaterialPageRoute(builder: (context) => ProfilePage(),));
         },
       ),
       ListTile(
         leading: Icon(Icons.wallet_giftcard),
         title: Text('My Subscription'),
         onTap: () {
           Navigator.push(context, 
           MaterialPageRoute(builder: (context) => Subscriptions(),));
         },
       ),
       ListTile(
         leading: Icon(Icons.settings),
         title: Text('Settings'),
         onTap: () {
           Navigator.pop(context);
         },
       ),
       ListTile(
         leading: Icon(Icons.logout),
         title: Text('Log Out'),
         onTap: () {
           Navigator.push(context, 
           MaterialPageRoute(builder: (context) => SignIn(),));
         },
       ),
    ]));
  }
}
