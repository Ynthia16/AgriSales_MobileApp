// import 'dart:html';

import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput(
      {super.key,
      required this.userName,
      required this.passWord,
      required this.controllerEmail,
      required this.controllerPassword,
      required this.formKey,
      
      });

  final String userName;
  final String passWord;
  final TextEditingController controllerEmail;
  final TextEditingController controllerPassword;
   final GlobalKey<FormState> formKey;

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

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email!';
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid password!';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 5, 3, 5),
      child: Form(
        key: widget.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: emailValidator,
              controller: widget.controllerEmail,
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
            TextFormField(
              validator: passwordValidator,
              controller: widget.controllerPassword,
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
      ),
    );
  }
}
