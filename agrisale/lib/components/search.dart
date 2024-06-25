import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                // width: 50,
                child: Container(
                  height: 50,
                  // width: 50,
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search here',
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: const Icon(Icons.search), // Icon on the right
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              color: Colors.green,
              child: InkWell(
                splashColor: const Color.fromARGB(255, 108, 205, 111),
                onTap: () {},
                child: const SizedBox(
                  width: 30,
                  height: 30,
                  child: Icon(color: Colors.white, size: 20, Icons.add),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
