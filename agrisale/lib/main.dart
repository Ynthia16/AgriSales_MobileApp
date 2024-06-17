import 'package:agrisale/Themes/themes_constant.dart';
import 'package:agrisale/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: lightTheme, home: const LoginScreen());
  }
}
