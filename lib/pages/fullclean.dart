import 'package:car_wash/pages/booknow.dart';
import 'package:car_wash/pages/mylocation.dart';
import 'package:car_wash/pages/wishlistprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../model/service.dart';

class FullClean extends StatefulWidget {
  const FullClean({super.key});

  @override
  State<FullClean> createState() => _FullCleanState();
}

class _FullCleanState extends State<FullClean> {
 List<Service> Services = [
    Service(
      price: 889,
      Name: 'Interior Full Deep Clean',
      imageURL: 'asset/fullclean1.jpg',
      time: '150 mins',
      description: 'Our most popular and a must do \nservice for every car owners.'
    ),
    Service(
      price: 339,
      Name: 'Exterior Full Clean',
      imageURL: 'asset/fullclean2.jpg',
      time: '90 mins',
      description: 'Get your car exterior cleaned quickly'
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     return Consumer<wishlistprovider>(builder: (context, wishlist, child) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.black,
        size: 30),
        backgroundColor: Colors.white,
        title: Text("Full Clean",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Services.length,
              itemBuilder: (context, index) {
                return Container(
                     width: MediaQuery.of(context).size.width - 20,
                    height: 350,
                    margin: const EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Container(
                          width: 400,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage(Services[index].imageURL),
                              fit: BoxFit.fitWidth,),),
                              child: ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.grey, Colors.grey.withOpacity(0.8)],).createShader(bounds),
                                  blendMode: BlendMode.darken,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 5,left: 20),
                                      child: Text(Services[index].Name,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,),),
                                        ),),
                                        ),),
                        Positioned(
                          bottom: 90,
                          left: 20,
                          child: Text(
                             Services[index].description ,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20),
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 20,
                          child: Container(
                            height: 30,width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.red
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                 Services[index].time,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                       ),
                       Positioned(
                          bottom: 10,
                          left: 20,
                          child: Text(
                            'Rs.  '+ Services[index].price.toString() ,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 20,
                          child:    ElevatedButton(
                            onPressed: () {
                              wishlist.add(
                              Services[index],);
                              Navigator.push(context, 
                              MaterialPageRoute(
                                builder: (context) => BookNowScreen(),));
                            },child:Text("BOOk Now" ,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                );
              },),
          ],
        ),
      ),
    );});
  }
}