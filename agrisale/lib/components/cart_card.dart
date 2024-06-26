import 'package:flutter/material.dart';

class MyCartCard extends StatelessWidget {
  const MyCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(8.0), // Add some margin between cards
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 245, 244, 244),
                spreadRadius: 1,
                blurRadius: 8)
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
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/crop1.png'),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.green, width: 2.0),
                        borderRadius: const BorderRadius.all(
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
                            'Oranges',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          Text('money',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300)),
                          SizedBox(height: 8),
                          Text('Rwf 2000',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 18,
                right: 10,
                child: SizedBox(
                  height: 25,
                  width: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // background
                      foregroundColor: Colors.white, // foreground
                    ),
                    onPressed: () {},
                    child: const Text(
                      'BUY IT',
                      style:
                          TextStyle(fontSize: 8, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
