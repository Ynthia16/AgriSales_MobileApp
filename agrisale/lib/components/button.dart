import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.buttonWord});

  final String buttonWord;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 4, 5),
      child: SizedBox(
        height: 45,
        width: 350,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                disabledBackgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                disabledForegroundColor: Colors.amber,
                elevation: 5.5,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                textStyle: const TextStyle(
                  fontSize: 18,
                )),
            child: Text(
              buttonWord,
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
