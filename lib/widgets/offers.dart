import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
     return CarouselSlider(
      items: [
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 24),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('asset/offercar1.jpg'),
              fit: BoxFit.cover)
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 24),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('asset/offercar3.webp'),
              fit: BoxFit.contain)
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 24),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('asset/offercar2.webp'),
              fit: BoxFit.contain)
          ),
        ),
      ], 
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
      ));
  }
}