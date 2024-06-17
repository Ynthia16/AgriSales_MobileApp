import 'package:agrisale/components/app_bar.dart';
// import 'package:agrisale/main.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: const MyAppBar(),
    );
  }
}
