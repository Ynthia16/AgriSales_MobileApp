import 'package:flutter/material.dart';

class MessagingWidget extends StatelessWidget {
  final String
      farmerPhoneNumber; //  will Replace with actual farmer contact information
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
              color: Color.fromARGB(255, 234, 234, 234), fontSize: 15),
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
            // Implement sending message functionality
            if (message.isNotEmpty) {
              // Here, i can implement logic to send the message
              // For simplicity, we'll just print the message

              // print('Message sent to farmer: $message');
              onMessageSent(
                  message); // Notify parent widget about the sent message
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
