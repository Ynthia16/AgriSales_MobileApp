import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/RiverPod/provider.dart';

class MySearchBar extends ConsumerWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController _searchController = TextEditingController();

    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Container(
                height: 50,
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
                    suffixIcon: const Icon(Icons.search),
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
              onTap: () {
                ref
                    .read(indexBottomNavbarProvider.notifier)
                    .updateIndex(1); 
              },
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  color: Colors.white,
                  size: 20,
                  Icons.shopping_cart_rounded,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



