import 'package:agrisale/screens/common_screens/blog_read.dart';
import 'package:flutter/material.dart';

class BlogInfo extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;

  const BlogInfo({
    super.key,
    required this.imagePath,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlogRead(
              imagePath: imagePath,
              title: title,
              author: 'Author Name', // Pass the author name here
              date: date,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 245, 244, 244),
                spreadRadius: 1,
                blurRadius: 3)
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(20.0), 
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
                      height: 90, 
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imagePath), fit: BoxFit.cover),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(13.0), 
                        ),
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          Text(date,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300)),
                          const SizedBox(height: 8),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

