import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 75, // Ensures the height constraint
        child: ListView.separated(
          separatorBuilder: (context, _) => const SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) => const SmallerCard(),
        ),
      ),
    );
  }
}

class SmallerCard extends StatelessWidget {
  const SmallerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75, // Ensures the height constraint
      width: 80, // Ensures the width constraint
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/crop1.png'),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.green, width: 2.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(14.0),
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}
