import 'package:flutter/material.dart';

/* -- Light & Dark outlined Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

/* -- Light Themes -- */
static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    side: const BorderSide(color: Colors.greenAccent),
    textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ),
);

/* -- Dark Themes -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
  elevation: 0,
  foregroundColor: Colors.white,
  side: const BorderSide(color: Color(0xFF00C853)),
  textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ),
  );
}