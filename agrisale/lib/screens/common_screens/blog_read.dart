import 'package:flutter/material.dart';
import 'package:agrisale/components/buyer_components/search.dart';
import 'package:agrisale/components/common_components/blog_card.dart';

class BlogRead extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String date;

  const BlogRead({
    super.key,
    required this.imagePath,
    required this.title,
    required this.author,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 70, child: MySearchBar()),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BloggerCard(
                imagePath: imagePath,
                title: title,
                author: author,
                date: date,
              ),
            ),
          ),
          const Divider(thickness: 1),
          const Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Crop diseases are a significant threat to global agriculture, impacting both the quality and quantity of crops. Effective management strategies include the use of resistant crop varieties, chemical treatments, and integrated pest management practices. Research and innovation in agricultural practices are crucial to developing sustainable solutions to combat crop diseases and ensure food security.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
