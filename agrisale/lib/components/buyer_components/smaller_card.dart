import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/crop7.jpg',
      'assets/images/crop2.jpg',
      'assets/images/crop3.jpg',
      'assets/images/crop4.jpg',
      'assets/images/crop5.jpg',
      'assets/images/crop6.jpg',
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 75, // Ensures the height constraint
        child: ListView.separated(
          separatorBuilder: (context, _) => const SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          itemCount: imagePaths.length,
          itemBuilder: (BuildContext context, int index) {
            return SmallerCard(imagePath: imagePaths[index]);
          },
        ),
      ),
    );
  }
}

class SmallerCard extends StatelessWidget {
  final String imagePath;

  const SmallerCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75, 
      width: 80,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
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
