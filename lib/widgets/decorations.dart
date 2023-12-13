import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color bgHome = Color(0xFF575757);
Color secondMenuColor = Color(0xFF2F2F2F);
BoxDecoration secondMenu = BoxDecoration(
    color: secondMenuColor,
    border: Border.all(
      color: Color(0xFF2F2F2F),
    ),
    borderRadius: BorderRadius.all(Radius.circular(26)));
BoxDecoration thirdMenu = BoxDecoration(
    color: Color.fromRGBO(87, 87, 87, 1),
    border: Border.all(
      color: Color.fromRGBO(87, 87, 87, 1),
    ),
    borderRadius: BorderRadius.all(Radius.circular(20)));

ThemeData mainTheme = ThemeData(
    textTheme: GoogleFonts.montserratTextTheme().copyWith(
        displayMedium: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white)));
