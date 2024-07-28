import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool _isTapped = false;
  void _changecolor() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.bodyLarge ?? const TextStyle();
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: _changecolor,
                  child: Text(
                    'Login',
                    style: textStyle.copyWith(
                        color: _isTapped
                            ? const Color.fromARGB(225, 1, 130, 65)
                            : Colors.black87),
                  )),
              InkWell(
                onTap: _changecolor,
                child: Text('Register',
                    style: textStyle.copyWith(
                        color: _isTapped
                            ? Colors.black87
                            : const Color.fromARGB(225, 1, 130, 65))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: _isTapped
                      ? const Color.fromARGB(225, 1, 130, 65)
                      : Colors.black87,
                  height: 30,
                  thickness: 3,
                  indent: 15,
                  endIndent: 0,
                ),
              ),
              Expanded(
                child: Divider(
                  color: _isTapped
                      ? const Color.fromARGB(221, 159, 159, 159)
                      : const Color.fromARGB(225, 1, 130, 65),
                  height: 30,
                  thickness: 3,
                  indent: 0,
                  endIndent: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
