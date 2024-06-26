import 'package:agrisale/RiverPod/provider.dart';
import 'package:agrisale/screens/Buyer_Screens/blog_screen.dart';
import 'package:agrisale/screens/Buyer_Screens/cart_screen.dart';
// import 'package:agrisale/screens/cart_screen.dart';
import 'package:agrisale/screens/Buyer_Screens/home_screen.dart';
import 'package:agrisale/screens/common_screens/profile.dart';
import 'package:agrisale/screens/farmers_screens/farmer_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:agrisale/RiverPod/notifier.dart';

class MainScreenFarmer extends ConsumerWidget {
  const MainScreenFarmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bodies = [
      const Center(child: Text('Food')),
      const Center(child: BlogScreen()),
      const Center(child: ProductPost()),
      const Center(child: MyProfileScreen()),
    ];

    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: const Color.fromARGB(255, 174, 171, 171),
        currentIndex: indexBottomNavbar,
        onTap: (value) {
          // print("Bottom Nav Bar Tapped: $value");
          ref.read(indexBottomNavbarProvider.notifier).updateIndex(value);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 252, 252, 252)),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add_sharp), label: 'Blog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add_rounded), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_rounded), label: 'Profile')
        ],
      ),
      body: bodies[indexBottomNavbar],
    );
  }
}
