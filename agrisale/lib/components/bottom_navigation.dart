import 'package:agrisale/RiverPod/provider.dart';
import 'package:agrisale/screens/home_screen.dart';
import 'package:agrisale/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/RiverPod/notifier.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bodies = [
      const Center(child: HomeScreen()),
      const Center(child: Text('Hello From Favorite')),
      const Center(child: Text('Hello From Settings')),
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
              icon: Icon(Icons.my_library_books), label: 'Blog'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_4_rounded), label: 'Profile')
        ],
      ),
      body: bodies[indexBottomNavbar],
    );
  }
}
