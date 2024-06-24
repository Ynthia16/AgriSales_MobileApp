import 'package:agrisale/components/button.dart';
import 'package:agrisale/screens/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/profile_app_bar.dart';
// import 'package:flutter/widgets.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

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
            const Text('Cynthia Rutaganda',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700)),
            const SizedBox(height: 10),
            const Text('Cynthia@gmail.com',
                style: TextStyle(
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
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
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
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 30),
                  InkWell(
                    highlightColor: const Color.fromARGB(255, 255, 253, 253),
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.shopping_bag_outlined),
                        SizedBox(width: 13),
                        Text('My orders', style: TextStyle(fontSize: 17.5))
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    highlightColor: const Color.fromARGB(255, 255, 253, 253),
                    onTap: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.logout_outlined, color: Colors.green),
                        SizedBox(width: 13),
                        Text('logout',
                            style:
                                TextStyle(fontSize: 17.5, color: Colors.green))
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
