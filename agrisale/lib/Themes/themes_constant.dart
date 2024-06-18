import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
    labelLarge: TextStyle(
        fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(
        fontSize: 16, color: Colors.black87, fontWeight: FontWeight.bold),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(225, 1, 130, 65),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
);
