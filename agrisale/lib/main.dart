import 'package:agrisale/Themes/themes_constant.dart';
import 'package:agrisale/components/bottom_navigation.dart';
import 'package:agrisale/components/home_card.dart';
import 'package:agrisale/components/smaller_card.dart';
import 'package:agrisale/screens/register.dart';
// import 'package:agrisale/screens/edit_profile.dart';
// import 'package:agrisale/screens/profile.dart';
import 'package:agrisale/components/tab_bar.dart';
// import 'package:agrisale/screens/login.dart';
import 'package:agrisale/screens/onboarding.dart';
// import 'package:agrisale/screens/register.dart';
import 'package:agrisale/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => const SplashScreen(),
        //   '/onboarding': (context) => const OnBoardScreen(),
        //   '/tab_bar': (context) => const MyTabBar(),
        //   '/bottom_navigation': (context) => const MainScreen(),
        // });

        // '/bottom_navigation': (context) => const MainScreen(),

        // '/login': (context) => const LoginScreen(),
        // '/register': (context) => const RegisterScreen(),
        // '/profile': (context) => const MyProfileScreen(),

        // home: const SplashScreen()
        // home: const OnBoardScreen()
        // home: const RegisterScreen());
        //  home: const LoginScreen()
        // home: const MyProfileScreen());
        // home: const EditProfileScreen());
        // home: const MainScreen());
        // home: const HomeCard());
        home: const SmallCard());
  }
}
