import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeWid {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: blueColor,
        accentColor: blueColor,
        primaryColor: Colors.red[900],
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        buttonColor: lightBlueColor,
        accentColor: Colors.white,
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: Theme.of(context).textTheme.copyWith(
              headline6: context.textTheme.headline6.copyWith(color: Colors.white)
            )),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color blueColor = Color(0xff403b50);
  static Color lightBlueColor = Vx.indigo500;
}
