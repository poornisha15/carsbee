import 'package:car_wash/model/service.dart';
import 'package:car_wash/pages/mylocation.dart';
import 'package:car_wash/pages/paymentscreen.dart';
import 'package:car_wash/pages/wishlistprovider.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookNowScreen extends StatefulWidget {
  @override
  _BookNowScreenState createState() => _BookNowScreenState();
}

class _BookNowScreenState extends State<BookNowScreen> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  bool _agreedToTerms = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

 @override
  Widget build(BuildContext context) {
    return Consumer<wishlistprovider>(
      builder: (context, wishlist, child) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                color: Colors.black,
                size: 30),
              title: Text(
                "Booking",
                style: TextStyle(
                    fontSize: 22, color: Colors.black),
              ),
            ),
            body: wishlist.wishItems.length == 0
                ? Center(
                    child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                      ),
                      Icon(
                        Icons.history,
                        size: 100,
                        color: Colors.black,
                      ),
                      Text(
                        'You dont have any bookings',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ))
                : SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                                   Text(
                                'Select Date and Time',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,),),
                                      SizedBox(height: 16.0),
                            Row(
                              children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => _selectDate(context),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Choose Date',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 18.0),
                              Text(
                                '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                                style: TextStyle(
                                   fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: InkWell(
                      onTap: () => _selectTime(context),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Choose Time',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 18.0),
                              Text(
                                '${_selectedTime.format(context)}',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                              ],
                            ),
                            SizedBox(height: 16.0),
                            CheckboxListTile(
                              title: Text('I agree to the terms and conditions'),
                              value: _agreedToTerms,
                              onChanged: (bool? value) {
                  setState(() {
                    _agreedToTerms = value ?? false;
                  });
                              },
                            ),
                      SizedBox(
                        child: ListView.builder(
                          shrinkWrap: true,
                            itemCount: wishlist.wishItems.length,
                            itemBuilder: (context, index) {
                              return Column(children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 320,
                                  width: 350,
                                  child: Stack(
                                    children: [
                                      Container(
                                      height: 200,
                                      width: 350,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              wishlist.wishItems[index].imageURL,
                                            ),
                                            fit: BoxFit.cover,
                                          )
                                          ),
                                    ),
                                   Positioned(
                                    bottom: 60,left: 10,
                                    child: Text(wishlist.wishItems[index].Name,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),),),
                                    Positioned(
                                    bottom: 20,left: 10,
                                    child: Container(
                                    height: 30,width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.red
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                         wishlist.wishItems[index].time,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                    ),
                                    Positioned(
                                    bottom: 20,left: 120,
                                    child: Text(
                                      "Rs. "+wishlist.wishItems[index].price.toString(),
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),),),
                                    Positioned(
                                      bottom: 20,right: 20,
                                      child: IconButton(
                                                                onPressed: () {
                                                                  wishlist.remove(
                                                                    wishlist.wishItems[index],
                                                                  );
                                                                },
                                                                icon: Icon(
                                                                  Icons.delete,
                                                                  color: Colors.black54,
                                                                ),
                                                                iconSize: 40,
                                                              ),
                                    ),
                                  ]),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, 
                                      MaterialPageRoute(
                                        builder: (context) => MyLocation(),));
                                    }, 
                                    child: Text("Choose Location",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black
                                    ),)),
                                    SizedBox(
                                  height: 5,
                                ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red
                                    ),
                                    onPressed: (){
                                      Navigator.push(context, 
                                      MaterialPageRoute(
                                        builder: (context) => PaymentScreen(),));
                                    }, 
                                    child: Text("PayNow",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                    ),))
                              ]);

                            },
                          ),
                          
                      )
                    
                    ],
                  ),
                ));
      },
    );
  }
}