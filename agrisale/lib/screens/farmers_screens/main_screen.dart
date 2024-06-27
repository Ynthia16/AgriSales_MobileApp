import 'package:agrisale/components/common_components/blog_info.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/farmer_components/farmer_card.dart';
import 'package:agrisale/components/farmer_components/search_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenFarmer extends ConsumerWidget {
  const HomeScreenFarmer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
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
          padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(height: 70, child: MySearchBarFarmer()),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FarmerCard(),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Trending crop Diseases',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
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
