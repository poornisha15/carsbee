
import 'package:car_wash/onboard/splash.dart';
import 'package:car_wash/pages/bottomnavigation.dart';
import 'package:car_wash/pages/homescreen.dart';
import 'package:car_wash/pages/wishlistprovider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  Widget build(BuildContext context) {
    return 
      MultiProvider(
      providers: [
        ChangeNotifierProvider<wishlistprovider>(
          create: (_) => wishlistprovider(),
        ),
        
        // ChangeNotifierProvider<cartprovider>(
        //   create: (_) => cartprovider(),
        // ),
      ],
      child: 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    ));
  }
}

