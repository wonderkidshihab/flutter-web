import 'package:flutter/material.dart';
import 'package:flutter_web/support/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              "Shihab Uddin",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                getIcon(icon: FontAwesomeIcons.facebook),
                getIcon(icon: FontAwesomeIcons.twitter),
                getIcon(icon: FontAwesomeIcons.github),
                getIcon(icon: FontAwesomeIcons.skype),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getIcon({IconData icon}) {
    return MaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
