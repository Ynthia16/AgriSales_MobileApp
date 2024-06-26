import 'package:flutter/material.dart';

class FarmerOrderScreen extends StatelessWidget {
  const FarmerOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> orders = [
      {
        'buyer': 'John Doe',
        'contact': '0780788899',
        'address': '123 Farm Lane',
        'crop': 'Mango',
        'quantity': '10 kg',
        'price': 'Rwf 20000',
        'status': 'Pending'
      },
      {
        'buyer': 'Jane Smith',
        'contact': '0780788800',
        'address': '456 Orchard Road',
        'crop': 'Apple',
        'quantity': '5 kg',
        'price': 'Rwf 15000',
        'status': 'Pending'
      },
    ];

    return Scaffold(
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 10, 15, 10),
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (BuildContext context, int index) {
            final order = orders[index];
            return Card(
              surfaceTintColor: Colors.white,
              elevation: 10,
              shadowColor: Colors.black,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(order['crop']!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Buyer: ${order['buyer']}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 67, 66, 66))),
                    Text('Contact: ${order['contact']}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 67, 66, 66))),
                    Text('Address: ${order['address']}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 67, 66, 66))),
                    Text('Quantity: ${order['quantity']}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 67, 66, 66))),
                    Text('Price: ${order['price']}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 67, 66, 66))),
                    Text('Status: ${order['status']}',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 67, 66, 66))),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.check, color: Colors.green),
                  onPressed: () {
                    _showOrderConfirmation(context, order);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showOrderConfirmation(BuildContext context, Map<String, String> order) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          surfaceTintColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text('Confirm Order',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 67, 66, 66))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Buyer: ${order['buyer']}',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              Text('Contact: ${order['contact']}',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              Text('Address: ${order['address']}',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              Text('Crop: ${order['crop']}',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              Text('Quantity: ${order['quantity']}',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
              Text('Price: ${order['price']}',
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 67, 66, 66))),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:
                  const Text('Cancel', style: TextStyle(color: Colors.green)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(
                      'Order confirmed!',
                    ),
                  ),
                );
              },
              child:
                  const Text('Confirm', style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    );
  }
}
