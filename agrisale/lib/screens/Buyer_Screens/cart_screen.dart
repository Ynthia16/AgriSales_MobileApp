import 'package:agrisale/components/buyer_components/messaging.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/buyer_components/search.dart';
import 'package:agrisale/components/buyer_components/cart_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agrisale/RiverPod/cart_provider.dart';

class MyCartScreen extends ConsumerWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItems = ref.watch(cartProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(height: 70, child: MySearchBar()),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = cartItems[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: MyCartCard(
                      image: item['image']!,
                      title: item['title']!,
                      price: item['price']!,
                      unit: item['unit']!,
                      onBuyIt: () {
                        _showOrderConfirmation(context, item);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showOrderConfirmation(BuildContext context, Map<String, String> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: const Color.fromARGB(255, 0, 0, 0),
          elevation: 1,
          shadowColor: Colors.black,
          title: const Text('Order Confirmation',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 67, 66, 66))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Order details: ${item['title']} - ${item['price']}',
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              const Text('Farmer Contacts: 0780788899',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              const Text('Delivery address: [User Address]',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              const SizedBox(height: 20),
              MessagingWidget(
                farmerPhoneNumber:
                    '+1234567890', // Replace with actual farmer contact information
                onMessageSent: (message) {
                  //Will Handle message sent logic
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.green)),
            ),
            TextButton(
              onPressed: () {
                // Implement order confirmation logic here
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('Order confirmed!',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                );
              },
              child: const Text('Confirm',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.green)),
            ),
          ],
        );
      },
    );
  }
}
