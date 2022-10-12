import 'package:delivery_food/constante.dart';
import 'package:flutter/material.dart';

class MyThemes {
  static const COLOR_PRIMARY = Colors.deepOrangeAccent;
  static const COLOR_ACCENT = Colors.orange;

  static const Color blackColor = Color(0x00000000);
  static const Color goldColor = Color(0xFFFFC23B);
  static const Color greyColor = Color(0xFFF5F5F5);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blueColor = Color(0xFF3282B8);
  static const Color cardcolor = Color.fromARGB(255, 120, 186, 230);
  static const Color cardcolorlight = Color(0xFFF5F5F5);

  static final lightThem = ThemeData(
    colorScheme: ColorScheme.light(),
    scaffoldBackgroundColor: greyColor,

    primaryColor: Colors.pink,

    primarySwatch: Colors.green,
    //colorScheme: ColorScheme.fromSwatch().copyWith(secondary: COLOR_ACCENT),
    backgroundColor: goldColor,

    cardColor: cardcolorlight,

    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 72.0, fontWeight: FontWeight.w600, color: goldColor),
      headline2: TextStyle(
          fontSize: 100.0, fontStyle: FontStyle.italic, color: blackColor),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: blueColor,
    ),

    appBarTheme: AppBarTheme(
      color: greyColor,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))),
            backgroundColor: MaterialStateProperty.all<Color>(COLOR_ACCENT))),

    /*  inputDecorationTheme: InputDecorationTheme(
         
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1))*/
  );

  static final darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    cardColor: cardcolor,

    backgroundColor: bacgroundColor,
    // scaffoldBackgroundColor: Colors.blue,
    appBarTheme: AppBarTheme(
      color: blueColor,
    ),
    colorScheme: ColorScheme.dark(),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 72.0, fontWeight: FontWeight.w600, color: goldColor),
      headline3: TextStyle(
          fontSize: 18.0, color: Colors.amber, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: blueColor,
    ),
  );
}
