import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: 65,
      width: 75,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage('assets/images/crop1.png'), fit: BoxFit.cover),
        border: Border.all(color: Colors.green, width: 2.0),
        borderRadius: const BorderRadius.all(
          Radius.circular(13.0), // Adjust the values as needed
          // Adjust the values as needed
        ),
        color: Colors.green,
      ),
      // child: Image.asset('assets/images/crop1.png')),
    )));
  }
}
