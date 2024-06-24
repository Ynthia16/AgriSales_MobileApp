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
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ))
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
      imageName: 'assets/images/onBoardPic1.png',
      title: 'Monitoring soil and plant',
      description:
          'we aim to use optical (VIR) sensing to observe the fields and make timely crop management decisions..'),
  const OnBoardCard(
      imageName: 'assets/images/onBoardPic2.png',
      title: 'Early detection of plant and soil diseases ',
      description:
          'our project can detect plant and soil diseases using an existing camera sensor that tracks the plants in real-time day by day.'),
  const OnBoardCard(
      imageName: 'assets/images/onBoardPic3.png',
      title: 'Improve agriculture precision',
      description:
          'we will use satellite imagery, image processing, deep learning, computer vision, and remote sensing to detect changes in the field and crops and solve the problems whenever they pop.')
];
