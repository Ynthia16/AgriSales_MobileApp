// import 'package:agrisale/components/input_text.dart';
import 'package:agrisale/components/button.dart';
import 'package:agrisale/components/profile_app_bar.dart';
import 'package:agrisale/screens/profile.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
              const ProfileAppBar(text: 'Edit Profile'),
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
      const Text('Change Picture',
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400)),
      const SizedBox(height: 30),
      const Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              textAlign: TextAlign.end,
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 300,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                // labelText: 'Enter Name',
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                    borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 220, 220, 220), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 300,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                // labelText: 'Enter Name',
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                    borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 220, 220, 220), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 300,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                // labelText: 'Enter Name',
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                    borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 220, 220, 220), fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 28),
        SizedBox(
            width: 310,
            child: MyButton(
              buttonWord: 'Update ',
              screenName: MyProfileScreen(),
            )),
      ])
    ])));
  }
}
