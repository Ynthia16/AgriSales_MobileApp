import 'package:agrisale/components/common_components/profile_app_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  User? _user;

  @override
  void initState() {
    super.initState();
    _user = _auth.currentUser;
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    if (_user != null) {
      var userDoc =
          await _db.collection('usersCollection').doc(_user!.uid).get();
      if (userDoc.exists) {
        setState(() {
          _usernameController.text = userDoc['userName'];
          _emailController.text = _user!.email ?? '';
        });
      }
    }
  }

  Future<void> _updateUserProfile() async {
    if (_user != null) {
      try {
        if (_emailController.text.isNotEmpty) {
          await _user!.verifyBeforeUpdateEmail(_emailController.text);
        }
        if (_passwordController.text.isNotEmpty) {
          await _user!.updatePassword(_passwordController.text);
        }
        await _db.collection('usersCollection').doc(_user!.uid).update({
          'userName': _usernameController.text,
          'email': _emailController.text,
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Profile updated successfully!'),
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to update profile: $e'),
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
      Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Username',
              textAlign: TextAlign.end,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _usernameController,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
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
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Email',
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _emailController,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
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
        const SizedBox(height: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Password',
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _passwordController,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
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
        const SizedBox(height: 28),
        SizedBox(
          width: 310,
          child: SizedBox(
            height: 45,
            width: 350,
            child: ElevatedButton(
                onPressed: () {
                  _updateUserProfile();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    elevation: 5.5,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    textStyle: const TextStyle(
                      fontSize: 18,
                    )),
                child: const Text(
                  'Update ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ])
    ])));
  }
}
