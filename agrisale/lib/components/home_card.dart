import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool _isFavorite = false;
  bool _isInCart = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 270,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                    width: 200,
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/crop1.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            20.0), // Adjust the values as needed
                        topRight: Radius.circular(
                            20.0), // Adjust the values as needed
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ClipOval(
                        child: Material(
                          color: const Color.fromARGB(
                              255, 244, 244, 244), // Button color
                          child: InkWell(
                            splashColor: Colors.green, // Splash color
                            onTap: () {
                              setState(() {
                                _isFavorite = !_isFavorite;
                              });
                            },
                            child: SizedBox(
                              width: 23,
                              height: 23,
                              child: Icon(
                                size: 16,
                                _isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color:
                                    _isFavorite ? Colors.green : Colors.green,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
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
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mango',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w400),
                              ),
                              Text('kg',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Rwf 2000',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.bold)),
                              ClipOval(
                                  child: Material(
                                color: const Color.fromARGB(
                                    255, 214, 214, 214), // Button color
                                child: InkWell(
                                  splashColor: Colors.green, // Splash color
                                  onTap: () {
                                    setState(() {
                                      _isInCart = !_isInCart;
                                    });
                                  },
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Icon(
                                      size: 16,
                                      _isInCart
                                          ? Icons.shopping_cart_rounded
                                          : Icons.shopping_cart_outlined,
                                      //   color: _isInCart
                                      //       ? Colors.green
                                      //       : Colors.black,
                                      // ),
                                    ),
                                  ),
                                ),
                              ))
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
        ),
      ),
    );
  }
}
