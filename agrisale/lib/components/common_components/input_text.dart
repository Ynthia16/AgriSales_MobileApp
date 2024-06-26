import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key, required this.userName, required this.passWord});

  final String userName;
  final String passWord;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool passwordVisible = true;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.name,
            style: const TextStyle(color: Colors.black, fontSize: 18),
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
              ),
              contentPadding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
              hintText: widget.userName,
              hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 220, 220, 220), fontSize: 18),
            ),
          ),
          const SizedBox(height: 24),
          TextField(
            obscureText: passwordVisible,
            textAlignVertical: TextAlignVertical.center,
            style: const TextStyle(color: Colors.black, fontSize: 18),
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
              ),
              contentPadding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
              hintText: widget.passWord,
              hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 220, 220, 220), fontSize: 18),
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              alignLabelWithHint: false,
              // filled: true,
            ),
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
