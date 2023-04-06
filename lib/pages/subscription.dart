import 'package:car_wash/pages/paymentscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Subscriptions extends StatefulWidget {
  const Subscriptions({super.key});

  @override
  State<Subscriptions> createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("Subscription",
        style:TextStyle(
          color: Colors.black,
          fontSize: 24
        ) ,),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors:[Colors.redAccent, Colors.deepPurple] )
                // image: DecorationImage(
                //   image: AssetImage("asset/carwashbg.jpg"),
                //   fit: BoxFit.fill)
              ),
              child:
            Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 50,top: 20,right: 50),
              child: Container(
                height: 220,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepPurple[100]
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 1200",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("1 Month silver",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 50,
                    child: Text("4 Exterior + 1 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),));
                      },
                      child: Text("Buy Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50,top: 20,right: 50),
              child: Container(
                height: 220,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepOrange[100]
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 8400",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("6 Months Platinum",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 40,
                    child: Text("24 Exterior + 24 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),));
                      },
                      child: Text("Buy Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50,top: 20,right: 50),
              child: Container(
                height: 220,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.indigo[100]
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 4400",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("3 Months Platinum",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 40,
                    child: Text("12 Exterior + 12 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                         Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),));
                      },
                      child: Text("Buy Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50,top: 20,right: 50),
              child: Container(
                height: 220,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.amber[100]
                ),
                child: Stack(children: [
                  Positioned(
                    top: 10,
                    left: 90,
                    child: Text("Starts at \n Rs. 7320",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Text("6 Months Gold",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Positioned(
                    bottom: 60,left: 40,
                    child: Text("24 Exterior + 12 Interior",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Positioned(
                    bottom: 10,left: 90,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),));
                      },
                      child: Text("Buy Now",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                ],),
              ),
            )
          ],),
      )]),
      ),
    );
  }
}