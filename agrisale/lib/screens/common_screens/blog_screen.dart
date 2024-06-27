import 'package:agrisale/components/buyer_components/search.dart';
import 'package:agrisale/components/common_components/blog_card.dart';
import 'package:agrisale/components/common_components/blog_info.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example data
    final List<Map<String, String>> blogData = [
      {
        'imagePath': 'assets/images/crop1.png',
        'title': 'Corn Crop diseases',
        'date': '13 Jan 2024'
      },
      {
        'imagePath': 'assets/images/crop2.jpg',
        'title': 'Rice Cultivation Tips',
        'date': '10 Feb 2021'
      },
      {
        'imagePath': 'assets/images/crop3.jpg',
        'title': 'Rice Cultivation Tips',
        'date': '10 Feb 2021'
      },
      {
        'imagePath': 'assets/images/crop4.jpg',
        'title': 'Rice Cultivation Tips',
        'date': '10 Feb 2021'
      },
      {
        'imagePath': 'assets/images/crop5.jpg',
        'title': 'Rice Cultivation Tips',
        'date': '10 Feb 2021'
      },
      {
        'imagePath': 'assets/images/crop6.jpg',
        'title': 'Rice Cultivation Tips',
        'date': '10 Feb 2021'
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 70, child: MySearchBar()),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 250, child: BlogCard()),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25.0, 8, 25, 8),
                child: Divider(thickness: 1, height: 1),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: blogData.map((data) {
                  return BlogInfo(
                    imagePath: data['imagePath']!,
                    title: data['title']!,
                    date: data['date']!,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
