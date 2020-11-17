import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselSection extends StatefulWidget {
  @override
  _CarouselSectionState createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  List carouselItems = ["HI,", "I'M", "SHIHAB"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: Color(0xff232323),
      child: CarouselSlider.builder(
        itemCount: carouselItems.length,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              "${carouselItems[index]}",
              style: GoogleFonts.lato(
                fontSize: 100,
                color: Colors.white,
                letterSpacing: 1.22,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
