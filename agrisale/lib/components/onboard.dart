import 'package:flutter/material.dart';

class OnBoardCard extends StatefulWidget {
  const OnBoardCard(
      {super.key,
      required this.imageName,
      required this.title,
      required this.description});

  final String imageName, title, description;

  
  @override
  State<OnBoardCard> createState() => _OnBoardCardState();
}

class _OnBoardCardState extends State<OnBoardCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 4, 10, 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imageName, width: 300, height: 340),
          Text(widget.title,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Text(widget.description,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal))
        ],
      ),
    );
  }
}

class OnBoard {
  final String imageName, title, description;
  OnBoard(
      {required this.imageName,
      required this.title,
      required this.description});
}
final List<OnBoardCard> data = [
  const OnBoardCard(
      imageName: 'assets/images/imageFlutter.PNG',
      title: 'food',
      description:
          'so here is the love of my life ad that lover is jesus above all creations.'),
  const OnBoardCard(
      imageName: 'assets/images/imageFlutter.PNG',
      title: 'water',
      description: 'love'),
  const OnBoardCard(
      imageName: 'assets/images/imageFlutter.PNG',
      title: 'milk',
      description: 'Holy'),
];
