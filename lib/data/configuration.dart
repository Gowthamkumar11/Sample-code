import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color indigo = Color(0xFF14213d);
const Color triadic = Color(0xffc0c2cf);
const Color grey500 = Color(0xffbdbdbd);
const Color grey200 = Color(0xffeeeeee);
const Color white = Color(0xffffffff);
const Color black = Color(0xff000000);
const Color pink = Color(0xffcd68c3);

class CustomGoogleFont extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  CustomGoogleFont({
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: size,
        fontWeight: weight,
        textStyle: TextStyle(
          letterSpacing: 0.4,
          color: color,
        ),
      ),
    );
  }
}

class CustomGoogleFontSpace extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  CustomGoogleFontSpace({
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: size,
        fontWeight: weight,
        textStyle: TextStyle(
          letterSpacing: 1.2,
          color: color,
        ),
      ),
    );
  }
}

class CustomGoogleFontWordSpace extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  CustomGoogleFontWordSpace({
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: size,
        fontWeight: weight,
        textStyle: TextStyle(
          letterSpacing: 1.2,
          wordSpacing: 1,
          height: 1.5,
          color: color,
        ),
      ),
    );
  }
}
