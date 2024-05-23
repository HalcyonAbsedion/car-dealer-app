import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      onBackground: Colors.grey.shade700,
      primary: Colors.white,
      onPrimary: Colors.black,
      onPrimaryContainer: Colors.white,
      secondary: Colors.grey.shade800,
    ));
