// import 'package:agrisale/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/buyer_components/search.dart';
import 'package:agrisale/components/buyer_components/smaller_card.dart';
import 'package:agrisale/components/buyer_components/home_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/RiverPod/cart_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Map<String, String>> products = [
      {
        'image': 'assets/images/crop1.png',
        'title': 'Mango',
        'price': 'Rwf 2000',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop2.jpg',
        'title': 'Apple',
        'price': 'Rwf 3000',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop3.jpg',
        'title': 'Banana',
        'price': 'Rwf 1500',
        'unit': 'kg',
      },
      {
        'image': 'assets/images/crop4.jpg',
        'title': 'Apple',
        'price': 'Rwf 4000',
        'unit': 'each',
      },
      {
        'image': 'assets/images/crop5.jpg',
        'title': 'Pineapple',
        'price': 'Rwf 4000',
        'unit': 'each',
      },
      {
        'image': 'assets/images/crop6.jpg',
        'title': 'Pineapple',
        'price': 'Rwf 4000',
        'unit': 'each',
      },
      {
        'image': 'assets/images/crop7.jpg',
        'title': 'Pineapple',
        'price': 'Rwf 4000',
        'unit': 'each',
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
          padding: const EdgeInsets.fromLTRB(10.0, 8, 10, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 20, 8, 5),
                child: SizedBox(height: 70, child: MySearchBar()),
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Shop by Category'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(child: SmallCard()),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Recommended'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 18, 5),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 25,
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
                        onAddToCart: (product) {
                          ref.read(cartProvider.notifier).addToCart(product);
                        },
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
