import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'image': 'assets/images/crop3.jpg',
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
        'image': 'assets/images/crop1.png',
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
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 18, 5),
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 17,
              mainAxisSpacing: 30,
              childAspectRatio: 0.8,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return HomeCard2(
                image: product['image']!,
                title: product['title']!,
                price: product['price']!,
                unit: product['unit']!,
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomeCard2 extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String unit;

  const HomeCard2({
    required this.image,
    required this.title,
    required this.price,
    required this.unit,
    Key? key,
  }) : super(key: key);

  @override
  _HomeCard2State createState() => _HomeCard2State();
}

class _HomeCard2State extends State<HomeCard2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            width: 160,
            height: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      widget.unit,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.price,
                      style: const TextStyle(
                        fontSize: 12.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                          iconSize: 20,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 2),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete),
                          iconSize: 20,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
