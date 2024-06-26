import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

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
        'title': 'Apple',
        'price': 'Rwf 4000',
        'unit': 'each',
      },
      {
        'image': 'assets/images/crop1.png',
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
      //  more product details here
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 10, 18, 5),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.75,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 10,
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
    super.key,
  });

  @override
  _HomeCard2State createState() => _HomeCard2State();
}

class _HomeCard2State extends State<HomeCard2> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                width: 160,
                height: 150,
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
            ],
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 12),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
