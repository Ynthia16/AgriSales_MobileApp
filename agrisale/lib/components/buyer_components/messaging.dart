import 'package:flutter/material.dart';

class MessagingWidget extends StatelessWidget {
  final String
      farmerPhoneNumber; 
  final Function(String) onMessageSent;

  const MessagingWidget(
      {required this.farmerPhoneNumber,
      required this.onMessageSent,
      super.key});

  @override
  Widget build(BuildContext context) {
    String message = '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          style: const TextStyle(
              color: Color.fromARGB(255, 67, 66, 66), fontSize: 15),
          onChanged: (value) {
            message = value;
          },
          decoration: const InputDecoration(
            hintText: 'Type your message...',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            if (message.isNotEmpty) {
              onMessageSent(
                  message);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('Message sent to farmer')),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please enter a message')),
              );
            }
          },
          child: const Text('Send Message',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.green)),
        ),
      ],
    );
  }
}
