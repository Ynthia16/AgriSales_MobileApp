// ignore_for_file: avoid_print

import 'package:agrisale/components/common_components/button.dart';
import 'package:agrisale/components/common_components/tab_bar.dart';
import 'package:agrisale/screens/common_screens/edit_profile.dart';
import 'package:agrisale/screens/common_screens/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/common_components/profile_app_bar.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  Map<String, dynamic>? userData;

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot documentSnapshot =
          await _db.collection('usersCollection').doc(user.uid).get();
      setState(() {
        userData = documentSnapshot.data() as Map<String, dynamic>?;
      });
    }
  }

  Future<void> _signOut() async {
    await _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: 200,
        child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const ProfileAppBar(text: 'Profile'),
              Positioned(
                top: 140,
                child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 233, 229, 229),
                    radius: 50,
                    child: IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_rounded))),
              ),
            ]),
      ),
      const SizedBox(height: 50),
      Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text('${userData?['userName'] ?? 'No name available'}',
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
            const SizedBox(height: 10),
            Text('${userData?['email'] ?? 'No email available'}',
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400)),
            const SizedBox(height: 15),
            const SizedBox(
                width: 200,
                child: MyButton(
                    buttonWord: 'Edit Profile',
                    screenName: EditProfileScreen())),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 40, 5, 5),
              child: Column(
                children: [
                  InkWell(
                    highlightColor: const Color.fromARGB(255, 255, 253, 253),
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.wifi),
                            SizedBox(width: 13),
                            Text('Favorites', style: TextStyle(fontSize: 17.5))
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_right_sharp))
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    highlightColor: const Color.fromARGB(255, 255, 253, 253),
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.dark_mode_outlined),
                        SizedBox(width: 13),
                        Text('dark mode', style: TextStyle(fontSize: 17.5))
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  InkWell(
                    highlightColor: const Color.fromARGB(255, 255, 253, 253),
                    onTap: () {},
                    child: Row(
                      children: [
                        const Icon(Icons.logout_outlined, color: Colors.green),
                        const SizedBox(width: 13),
                        TextButton(
                            onPressed: () async {
                              await _signOut();
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const MyTabBar()));
                            },
                            child: const Text('logout',
                                style: TextStyle(
                                    fontSize: 17.5, color: Colors.green)))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ])));
  }
}
