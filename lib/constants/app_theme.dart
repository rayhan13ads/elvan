import 'package:flutter/material.dart';

const Color primaryColor = Color(0xffE31640);
const Color cardBgDarkColor = Color.fromRGBO(104, 104, 104, 0.7);
const Color backDropColor = Color.fromRGBO(0, 0, 0, 0.7);

ThemeData appThme() {
  return ThemeData(
    //text styling
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 28,
          color: Colors.white,
          ),
      titleLarge: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Colors.white,
          height: 27),
      titleMedium: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.white,
          letterSpacing: 0.5,
          ),
      titleSmall: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.white,
          letterSpacing: 0.1,
          ),
      labelSmall: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 11,
          color: Colors.white,
      
          letterSpacing: 0.5),
      bodyLarge: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.white,
          letterSpacing: 0.5),
      bodySmall: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Colors.white,
          
          letterSpacing: 0.4),
      bodyMedium: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Colors.white,
  
          letterSpacing: 0.4),
    ),

    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Colors.white,
    buttonTheme: const ButtonThemeData(buttonColor: primaryColor),
    errorColor: Colors.red,
  );
}
