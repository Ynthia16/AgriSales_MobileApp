import 'package:agrisale/Themes/themes_constant.dart';
import 'package:agrisale/components/buyer_components/bottom_navigation.dart';
import 'package:agrisale/components/cart_card.dart';
// import 'package:agrisale/components/cart_order.dart';
import 'package:agrisale/components/buyer_components/home_card.dart';
import 'package:agrisale/components/farmer_components/buttom_navigation.dart';
import 'package:agrisale/components/search.dart';
import 'package:agrisale/components/smaller_card.dart';
import 'package:agrisale/screens/Buyer_Screens/blog_read.dart';
import 'package:agrisale/screens/Buyer_Screens/blog_screen.dart';
import 'package:agrisale/screens/Buyer_Screens/cart_screen.dart';
import 'package:agrisale/screens/farmers_screens/farmer_post.dart';
// import 'package:agrisale/screens/home.dart';
import 'package:agrisale/screens/Buyer_Screens/home_screen.dart';
import 'package:agrisale/screens/common_screens/register.dart';
// import 'package:agrisale/screens/edit_profile.dart';
// import 'package:agrisale/screens/profile.dart';
import 'package:agrisale/components/tab_bar.dart';
// import 'package:agrisale/screens/login.dart';
import 'package:agrisale/screens/common_screens/onboarding.dart';
// import 'package:agrisale/screens/register.dart';
import 'package:agrisale/screens/common_screens/splash.dart';
import 'package:agrisale/screens/farmers_screens/main_screen.dart';
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

        // '/homescreen': (context) => const LoginScreen(),
        // '/homeCard': (context) => const RegisterScreen(),
        // '/CartCard': (context) => const MyProfileScreen(),
        //  '/CartScreen': (context) => const MyCartScreen(cartItems: cartItems),

        // home: const SplashScreen()
        // home: const OnBoardScreen()
        // home: const RegisterScreen());
        //  home: const LoginScreen()
        // home: const MyProfileScreen());
        // home: const EditProfileScreen());
        // home: const MainScreen());

        // home: const HomeScreen());
        // home: const HomeCard());
        // home: const SmallCard());
        // home: const MyCartCard());
        // home: const MySearchBar());
        // home: const MyCartScreen());
        // home: const BlogScreen());
        // home: const BlogRead());
        // home: const ProductPost());
        // home: MyHomeScreen());
        home: const MainScreenFarmer());
  }
}
