import 'package:agrisale/screens/login.dart';
import 'package:agrisale/screens/register.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 130,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            bottom: const TabBar(
              
              indicatorColor: Colors.green,
              labelColor: Colors.white,
              tabs: [
                Tab(
                    child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                )),
                Tab(child: Text('Register', style: TextStyle(fontSize: 20)))
              ],
            )),
        body: const TabBarView(
          children: [LoginScreen(), RegisterScreen()],
        ),
      ),
    );
  }
}
