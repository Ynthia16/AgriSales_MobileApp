// import 'package:agrisale/components/button.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          text,
          style: const TextStyle(
              fontSize: 17.5, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => {Navigator.pop(context)},
            icon: const Icon(Icons.arrow_back_outlined)),
        actions: [
          IconButton(
              onPressed: () => {}, icon: const Icon(Icons.notifications_none)),
        ],
      ),
    );
  }
}
