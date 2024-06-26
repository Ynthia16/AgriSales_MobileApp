import 'package:agrisale/components/common_components/blog_info.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/farmer_components/farmer_card.dart';
import 'package:agrisale/components/farmer_components/search_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenFarmer extends ConsumerWidget {
  const HomeScreenFarmer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 8, 10, 8),
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
      ),
    );
  }
}
