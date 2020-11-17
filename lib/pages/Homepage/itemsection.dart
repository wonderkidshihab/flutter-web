import 'package:flutter/material.dart';
import 'package:flutter_web/support/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Color(0xfff1f1f1),
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              getItem(),
              getItem(),
              getItem(),
              getItem(),
              getItem(),
            ],
          ),
        ],
      ),
    );
  }

  Widget getItem() {
    return Container(
      width: 300,
      height: 520,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // border: Border.all(
        //     color: Colors.black38, width: 1, style: BorderStyle.solid),
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Colors.black38.withOpacity(0.05),
              offset: Offset.zero,
              spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: primaryColor, style: BorderStyle.solid, width: 0.5),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    color: Colors.black38.withOpacity(0.05),
                    offset: Offset.zero,
                    spreadRadius: -4),
              ],
            ),
            height: 240,
            alignment: Alignment.center,
            child: Icon(
              Icons.support_agent,
              size: 100,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "This is the Title",
            style: GoogleFonts.montserrat(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: lightColor,
              letterSpacing: 1.25,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15),
          Text(
            "Lorem Ipsum is simply dummy text of the "
            "printing and typesetting industry. Lorem"
            " Ipsum has been the industry's standard "
            "dummy text ever since the 1500s, when an "
            "unknown printer took a galley of type and scrambled it to.",
            style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.black54,
                letterSpacing: 1.1,
                height: 1.25),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 22.5),
          Container(
            alignment: Alignment.bottomRight,
            child: FlatButton.icon(
              icon: Icon(
                FontAwesomeIcons.arrowAltCircleRight,
                color: Colors.white,
                size: 16,
              ),
              label: Text(
                "Learn more",
                style: GoogleFonts.montserrat(color: Colors.white),
              ),
              onPressed: () {},
              color: primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
