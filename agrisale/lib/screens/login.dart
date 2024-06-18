import 'package:agrisale/components/app_bar.dart';
import 'package:agrisale/components/button.dart';
import 'package:agrisale/components/input_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              const Text('Sign In',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text('Welcome, Do you have an account?',
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),
              const TextInput(passWord: 'Password', userName: 'Email'),
              const SizedBox(height: 20),
              // const MyButton(buttonWord: 'Login'),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: Colors.green,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      const Text(
                        'Remember Me',
                        style: TextStyle(
                            fontSize: 15.5, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 15.5, color: Colors.green),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const MyButton(buttonWord: 'Login'),
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 14, 8, 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Don't have an Account? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 14, color: Colors.green),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
