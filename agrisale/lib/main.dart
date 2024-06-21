import 'package:agrisale/Themes/themes_constant.dart';
import 'package:agrisale/components/tab_bar.dart';
import 'package:agrisale/screens/login.dart';
import 'package:agrisale/screens/onboarding.dart';
import 'package:agrisale/screens/register.dart';
import 'package:agrisale/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnBoardScreen(),
        '/tab_bar': (context) => const MyTabBar(),
        // '/login': (context) => const LoginScreen(),
        // '/register': (context) => const RegisterScreen(),
      },

      // home: const SplashScreen()
      // home: const OnBoardScreen()
      // home: const RegisterScreen()
      //  home: const LoginScreen()
    );
  }
}
