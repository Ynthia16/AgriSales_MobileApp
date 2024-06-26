import 'package:agrisale/components/search.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/blog_card.dart';
import 'package:agrisale/components/blog_info.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              children: List.generate(
                10,
                (index) => const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: BlogInfo(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
