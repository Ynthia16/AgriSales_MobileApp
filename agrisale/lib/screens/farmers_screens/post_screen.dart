import 'package:flutter/material.dart';
import 'package:agrisale/components/farmer_components/post.dart';
import 'package:agrisale/components/farmer_components/search_bar.dart';

class MyPostScreen extends StatelessWidget {
  const MyPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 8, 10, 8),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 70, child: MySearchBarFarmer()),
              ),
              SizedBox(height: 20),
              SizedBox(
                  child: Text('All products i posted(12)',
                      style: TextStyle(fontSize: 13))),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: PostCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
