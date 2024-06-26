import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String unit;
  final Function onAddToCart;

  const HomeCard({
    required this.image,
    required this.title,
    required this.price,
    required this.unit,
    required this.onAddToCart,
    super.key,
  });

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool _isFavorite = false;
  bool _isInCart = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 240,
      child: Column(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 18, 8),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ClipOval(
                    child: Material(
                      color: const Color.fromARGB(255, 244, 244, 244),
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {
                          setState(() {
                            _isFavorite = !_isFavorite;
                          });
                          // Show alert dialog for favorite action
                          _showFavoriteAlert();
                        },
                        child: SizedBox(
                          width: 23,
                          height: 23,
                          child: Icon(
                            _isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border_outlined,
                            color: _isFavorite ? Colors.green : Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                          ClipOval(
                            child: Material(
                              color: const Color.fromARGB(255, 214, 214, 214),
                              child: InkWell(
                                splashColor: Colors.green,
                                onTap: () {
                                  setState(() {
                                    _isInCart = !_isInCart;
                                  });
                                  // Show alert dialog for cart action
                                  _showCartAlert();
                                  widget.onAddToCart(
                                    {
                                      'image': widget.image,
                                      'title': widget.title,
                                      'price': widget.price,
                                      'unit': widget.unit,
                                    },
                                  );
                                },
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Icon(
                                    _isInCart
                                        ? Icons.shopping_cart_rounded
                                        : Icons.shopping_cart_outlined,
                                  ),
                                ),
                              ),
                            ),
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

  void _showFavoriteAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(200, 55, 55, 55),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Alert',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                'Item added to favorites',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const Divider(
                thickness: 1,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showCartAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(200, 55, 55, 55),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Alert',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const Text(
                'Item added to cart',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const Divider(
                thickness: 1,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
