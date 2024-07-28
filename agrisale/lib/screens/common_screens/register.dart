import 'package:agrisale/components/common_components/tab_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:agrisale/components/common_components/input_text.dart';
import 'package:agrisale/components/common_components/dropdown.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userTypeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _userTypeController.dispose();
    super.dispose();
  }

  String _message = '';
  bool _isLoading = false;

  Future<void> _registerWithEmailAndPassword() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
      });
    }
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      await _db
          .collection('usersCollection')
          .doc(userCredential.user?.uid)
          .set({
        'email': _emailController.text,
        'userName': _nameController.text,
        'userType': _userTypeController.text,
      });
      setState(() {
        _isLoading = false;
        _navigateToLogin();
        _message = 'Successfully registered as ${userCredential.user?.email}';
      });
    } catch (e) {
      setState(() {
        _message = 'Failed to register with Email & Password\n${e.toString()}';
        _isLoading = false;
      });
    }
  }

  void _navigateToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MyTabBar()),
    );
  }

  bool? isChecked = true;
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
              const Text('Register',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Text('Register here',
                  style: Theme.of(context).textTheme.bodyLarge),
              const SizedBox(height: 20),
              TextInput(
                  formKey: _formKey,
                  controllerEmail: _emailController,
                  controllerPassword: _passwordController,
                  passWord: 'Password',
                  userName: 'Email'),
              const SizedBox(height: 20),
              TextField(
                controller: _nameController,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.name,
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
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
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownMenuExample(
                    userTypeController: _userTypeController),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 45,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      _registerWithEmailAndPassword();
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
                            color: Colors.white,
                          )
                        : const Text(
                            'Register',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
              ),
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
