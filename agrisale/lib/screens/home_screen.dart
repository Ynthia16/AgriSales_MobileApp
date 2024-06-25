import 'package:agrisale/components/smaller_card.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/home_card.dart';
import 'package:flutter/widgets.dart'; // Ensure the path to home_card.dart is correct

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'image': 'assets/images/crop1.png',
        'title': 'Mango',
        'price': 'Rwf 2000',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop1.png',
        'title': 'Apple',
        'price': 'Rwf 3000',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop1.png',
        'title': 'Banana',
        'price': 'Rwf 1500',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop1.png',
        'title': 'Pineapple',
        'price': 'Rwf 4000',
        'unit': 'each',
      },
      {
        'image': 'assets/images/crop1.png',
        'title': 'Mango',
        'price': 'Rwf 2000',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop1.png',
        'title': 'Apple',
        'price': 'Rwf 3000',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop1.png',
        'title': 'Banana',
        'price': 'Rwf 1500',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop1.png',
        'title': 'Pineapple',
        'price': 'Rwf 4000',
        'unit': 'each',
      },
      // Add more product details here
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(child: SmallCard()),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      final product = products[index];
                      return HomeCard(
                        image: product['image']!,
                        title: product['title']!,
                        price: product['price']!,
                        unit: product['unit']!,
                      );
                    },
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
