import 'package:flutter/material.dart';
import 'package:agrisale/components/farmer_components/post.dart';
import 'package:agrisale/components/farmer_components/search_bar.dart';

class MyPostScreen extends StatelessWidget {
  const MyPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 8),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 70, child: MySearchBarFarmer()),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const SizedBox(
                    child: Text('All products i posted(12)',
                        style: TextStyle(fontSize: 15))),
              ),
              const SizedBox(height: 2),
              const Padding(
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
