import 'package:flutter/material.dart';

class TColors{



  TColors._();

  // app Basic Colors
  static const Color primary = Color(0xFF75E6AC);
  static const Color secondary = Color(0xFFFFBC61);
  static const Color accent = Color(0xff7becf8);

   // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors:[
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),

    ],
  );

  // Text Colors
  static const Color textPrimary = Color(0xff333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textAccent = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF6F6f6);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6f6);
  static const Color darkContainer  = Color(0xFFF6F6f6); //TColors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xff00e676);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFF6F6f6);

  //Error and Validation Colors
  static const Color error = Color(0xFFFF5252);
  static const Color success = Color(0xFF448AFF);
  static const Color warning = Color(0xFFD32F2F);
  static const Color info = Color(0xFF66BB6A);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGray = Color(0xFFF4F4F4);
  static const Color lightGray  = Color(0xFFF9F9F9);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color white = Color(0xFFFFFFFF);

}





