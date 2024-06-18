import 'package:flutter/material.dart';
import 'package:agrisale/components/app_bar.dart';
import 'package:agrisale/components/button.dart';
import 'package:agrisale/components/input_text.dart';
import 'package:agrisale/components/dropdown.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 20, 4),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(),
              const SizedBox(height: 20),
              const Text('Register',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text('Register here',
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),
              const TextInput(passWord: 'Password', userName: 'Email'),
              const SizedBox(height: 20),
              const TextField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                style: TextStyle(color: Colors.black, fontSize: 18),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 220, 220, 220)),
                    borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(15, 3, 0, 0),
                  hintText: 'Full Names',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 220, 220, 220), fontSize: 18),
                ),
              ),
              const MyDropDown(),
              const SizedBox(height: 20),
              const MyButton(buttonWord: 'Register'),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an account?',
                    style:
                        TextStyle(fontSize: 15.5, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 15.5, color: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
