import 'package:flutter/material.dart';
import 'package:flutter_web/support/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://i.ytimg.com/vi/l0W2e1mGntQ/maxresdefault.jpg"),
          alignment: Alignment.topRight,
          fit: BoxFit.fitHeight,
        ),
      ),
      height: 600,
      alignment: Alignment.centerLeft,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to Flutter World.",
              style: GoogleFonts.lato(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.12,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting"
              " industry. Lorem Ipsum has been the industry's standard dummy"
              " text ever since the 1500s, when an unknown printer took"
              " a galley of type and scrambled it to ",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Text(
                  "ABOUT ME",
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
