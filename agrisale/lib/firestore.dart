// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyFirestore extends StatefulWidget {
  const MyFirestore({super.key});

  @override
  State<MyFirestore> createState() => _MyFirestoreState();
}

class _MyFirestoreState extends State<MyFirestore> {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  void create() async {
    try {
      await _db
          .collection('usersCollection')
          .doc('userData')
          .set({'email': 'email',
           'userName': 'Cynthia', 
           'userType': 'Buyer'});
    } catch (e) {
      print(e);
    }
  }

  void read() async {
    DocumentSnapshot documentSnapshot;
    try {
      documentSnapshot =
          await _db.collection('usersCollection').doc('userData').get();
      Map<String, dynamic>? data =
          documentSnapshot.data() as Map<String, dynamic>?;
      print(data.toString());
    } catch (e) {
      print(e);
    }
  }

  void update() async {
    try {
      await _db
          .collection('usersCollection')
          .doc('userData')
          .update({'userName': 'Rutaganda'});
    } catch (e) {
      print(e);
    }
  }

  void delete() async {
    try {
      await _db.collection('usersCollection').doc('userData').delete();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
