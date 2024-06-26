import 'package:agrisale/components/blog_card.dart';
import 'package:agrisale/components/search.dart';
import 'package:flutter/material.dart';

class BlogRead extends StatelessWidget {
  const BlogRead({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 70, child: MySearchBar()),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 250, child: BloggerCard()),
          ),
          Divider(thickness: 1),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Crop diseases are a significant threat to global agriculture, impacting both the quality and quantity of food production. These diseases, caused by various pathogens including fungi, bacteria, viruses, and nematodes, can lead to severe yield losses and economic damage. Common crop diseases like rust, blight, and wilt can devastate entire fields if not properly managed. The spread of these diseases is often facilitated by factors such as poor crop rotation, inadequate disease control practices, and climatic conditions that favor pathogen proliferation. Effective management strategies include the use of resistant crop varieties, chemical treatments, and integrated pest management practices. Research and innovation in agricultural practices are crucial to developing sustainable solutions to combat crop diseases and ensure food security.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
