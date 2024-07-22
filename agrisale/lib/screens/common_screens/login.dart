import 'package:agrisale/screens/Buyer_Screens/home_screen.dart';
import 'package:agrisale/screens/Main_screens/Buyer_MainScreen/bottom_navigation.dart';
import 'package:agrisale/components/common_components/button.dart';
import 'package:agrisale/components/common_components/input_text.dart';
import 'package:agrisale/screens/Main_screens/Farmer_MainScreen/buttom_navigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:agrisale/screens/Main_screens/Farmer_MainScreen/buttom_navigation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _message = '';

  Future<void> _signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      _navigateToHome();
      setState(() {});
    } catch (e) {
      setState(() {
        _message = 'Failed to sign in with Email & Password\n${e.toString()}';
      });
    }
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreenBuyer()),
    );
  }

   @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 20, 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              TextInput(
                  controllerEmail: _emailController,
                  controllerPassword: _passwordController,
                  passWord: 'Password',
                  userName: 'Email'),
              const SizedBox(height: 20),
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

              // const MyButton(
              //   buttonWord: 'Login',

              // so if you want to navigate from the login screen to the
              // buyer's main screen use MainScreeenBuyer and
              //if you need to go to the Farmer's Main Screen uncomment the MainScreenFarmer

              // screenName: MainScreenBuyer(),
              // screenName: MainScreenFarmer(),
              // ),

              SizedBox(
                height: 45,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      _signInWithEmailAndPassword();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        // disabledBackgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        // disabledForegroundColor: Colors.amber,
                        elevation: 5.5,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        textStyle: const TextStyle(
                          fontSize: 18,
                        )),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(8, 14, 8, 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Don't have an Account? ",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
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
