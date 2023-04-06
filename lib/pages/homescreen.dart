import 'package:car_wash/model/service.dart';
import 'package:car_wash/onboard/signin.dart';
import 'package:car_wash/pages/engineclean.dart';
import 'package:car_wash/pages/fullclean.dart';
import 'package:car_wash/pages/pressurewash.dart';
import 'package:car_wash/pages/washandcoat.dart';
import 'package:car_wash/pages/waterless.dart';
import 'package:car_wash/pages/wheelchange.dart';
import 'package:car_wash/widgets/mydrawer.dart';
import 'package:car_wash/widgets/offers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      endDrawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 10,
        automaticallyImplyLeading: false,
      backgroundColor:Colors.white,
        title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Location",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                      ),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                          color: Colors.black,),
                          SizedBox(width: 5,),
                          Text("Chennai,Tamil Nadu",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.w700,
                          ),),
                          Icon(Icons.arrow_drop_down,
                          color: Colors.black,
                          size: 25,),
                          SizedBox(width: 80,),
                        ],),
                        SizedBox(height: 13,),
                        
                    ],),
                ],),
      ),
      body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        width: size.width * .95,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black54,
                            ),
                            SizedBox(width: 5,),
                            const Expanded(
                                child: TextField(
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(fontSize: 18,color: Colors.black54),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            )),
                            Icon(
                              Icons.mic,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    ],
                  ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Hello,  Pooja",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Lets Clean Up Your Car Today!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                ),),
              ),
              SizedBox(height: 35,),
              Container(
                child: OfferScreen(),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                child: Text("All Services",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),),),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => PressureWash(),));
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("asset/pressurewash.jpg"))
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Pressure\n   wash",
                    style: TextStyle(
                      fontSize: 22
                    ),)
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => FullClean(),));
                      }),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("asset/fullclean.jpg"),
                            fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("   Full\n Clean",
                    style: TextStyle(
                      fontSize: 22
                    ),)
                  ],
                ),Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Waterlessclean(),));
                      }),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("asset/waterless.jpg"),
                            fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Waterless\n    Clean",
                    style: TextStyle(
                      fontSize: 22
                    ),)
                  ],
                ),
              ],),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => EngineClean(),));
                      }),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("asset/engine clean.jpg"),
                            fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("  Engine\n   Clean",
                    style: TextStyle(
                      fontSize: 22
                    ),)
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => WashAndCoat(),));
                      }),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("asset/wash & coat.jpg"),
                            fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Wash &\n   Coat",
                    style: TextStyle(
                      fontSize: 22
                    ),)
                  ],
                ),Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => WheelChnage(),));
                      }),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("asset/wheels.jpg",),
                            fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("  Wheel\n Change",
                    style: TextStyle(
                      fontSize: 22
                    ),)
                  ],
                ),
              ],), 
              SizedBox(height: 20,),


          ],
        ),
      ));
  }
}