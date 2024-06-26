import 'package:flutter/material.dart';

class BlogInfo extends StatelessWidget {
  const BlogInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0), // Add some margin between cards
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 245, 244, 244),
              spreadRadius: 1,
              blurRadius: 3)
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(20.0), // Adjust the values as needed
        ),
        color: Colors.white,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 130,
          maxHeight: 130,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90, // Adjusted height for the image container
                    width: 120,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/crop1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(13.0), // Adjust the values as needed
                      ),
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Corn Crop diseases',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text('13 Jan 2024',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300)),
                        SizedBox(height: 8),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
