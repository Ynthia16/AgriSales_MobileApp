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

  //  final textStyle = Theme.of(context).textTheme.bodyLarge ?? TextStyle();
  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.bodyLarge ?? const TextStyle();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                    onTap: _changecolor,
                    child: Column(
                      children: [
                        Text(
                          'Login',
                          style: textStyle.copyWith(
                              color: _isTapped
                                  ? const Color.fromARGB(225, 1, 130, 65)
                                  : Colors.black87),
                        ),
                        Expanded(
                          child: Divider(
                            color: _isTapped
                                ? const Color.fromARGB(225, 1, 130, 65)
                                : Colors.black87,
                            height: 30,
                            thickness: 3,
                            indent: 50,
                            endIndent: 0,
                          ),
                        ),
                      ],
                    )),
                Text('Register',
                    style: textStyle.copyWith(
                        color: _isTapped
                            ? const Color.fromARGB(225, 1, 130, 65)
                            : Colors.black87))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Expanded(
                //   child: Divider(
                //     color: _isTapped
                //         ? const Color.fromARGB(225, 1, 130, 65)
                //         : Colors.black87,
                //     height: 30,
                //     thickness: 3,
                //     indent: 50,
                //     endIndent: 0,
                //   ),
                // ),
                Expanded(
                  child: Divider(
                    color: _isTapped
                        ? const Color.fromARGB(225, 1, 130, 65)
                        : Colors.black87,
                    height: 30,
                    thickness: 3,
                    indent: 0,
                    endIndent: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
