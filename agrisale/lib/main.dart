import 'package:agrisale/Themes/themes_constant.dart';
import 'package:agrisale/screens/Main_screens/Buyer_MainScreen/bottom_navigation.dart';
import 'package:agrisale/components/common_components/tab_bar.dart';
import 'package:agrisale/screens/Main_screens/Farmer_MainScreen/buttom_navigation.dart';
import 'package:agrisale/screens/common_screens/onboarding.dart';
import 'package:agrisale/screens/common_screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
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
          // this is how we are doing it before we integrate the firebase
          //and firestore to retrive information , so we will be using this approach in the meantime

          // use this if you want to see what the buyer on his main screen
          //(if the user chooses buyer as the user type while logging in )

          // '/bottom_navigation': (context) => const MainScreenBuyer(),

          // uncomment this to see the main screen of the farmer
          // (if the user chooses farmer as the user type while logging in )
          // but please first change the navigation screen in the login screen

          '/bottom_navigation': (context) => const MainScreenFarmer(),
        });
  }
}
