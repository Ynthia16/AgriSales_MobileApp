import 'package:agrisale/screens/Main_screens/Buyer_MainScreen/bottom_navigation.dart';
import 'package:agrisale/components/common_components/input_text.dart';
import 'package:agrisale/screens/Main_screens/Farmer_MainScreen/buttom_navigation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
  final _formKey = GlobalKey<FormState>();


  String _message = '';
  bool _isLoading = false;

  Future<void> _signInWithEmailAndPassword() async {

     if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
      });
    }
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      User? user = userCredential.user;
      if (user != null) {
        DocumentSnapshot userDoc =
            await _db.collection('usersCollection').doc(user.uid).get();
        if (userDoc.exists) {
          String userType = userDoc['userType'];

          if (userType == 'Buyer') {
            _buyerNavigateToHome();
          } else if (userType == 'Farmer') {
            _farmerNavigateToHome();
          } else {
            setState(() {
              _message = 'Unknown user type';
              // print(_message);
            });
          }
        } else {
          setState(() {
            _message = 'User document does not exist';
            // print(_message);
          });
        }
      }
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _message = 'Failed to sign in with Email & Password\n${e.toString()}';
        _isLoading = false;
      });
    }
  }

  void _buyerNavigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreenBuyer()),
    );
  }

  void _farmerNavigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreenFarmer()),
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
                 formKey: _formKey,
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

              SizedBox(
                height: 45,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      _signInWithEmailAndPassword();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 5.5,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        textStyle: const TextStyle(
                          fontSize: 18,
                        )),
                    child: _isLoading
                        ? const CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          )
                        : const Text(
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
