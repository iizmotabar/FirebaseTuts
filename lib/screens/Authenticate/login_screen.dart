// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auth_revision/services/auth_service.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final Function toggleView;
  const LoginScreen({
    Key? key,
    required this.toggleView,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthService authService = AuthService();
  bool isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            color: Colors.white,
            child: const Center(child: CircularProgressIndicator.adaptive()))
        : Scaffold(
            appBar: AppBar(
              actions: [
                ElevatedButton(
                  onPressed: () {
                    widget.toggleView();
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.orange),
                  ),
                  child: const Text('Sign Up'),
                )
              ],
              backgroundColor: Colors.deepOrange,
              title: const Text('Sign In'),
              centerTitle: true,
            ),
            backgroundColor: Colors.brown.shade100,
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Center(
                child: Form(
                  key: _signInFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          label: const Text('Username'),
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                        ),
                        validator: (value) {
                          if (value!.isNotEmpty && value.contains('@')) {
                            return null;
                          }
                          return 'Please enter a valid email';
                        },
                        controller: _emailController,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            fillColor: Colors.grey.shade300,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                          ),
                          validator: (value) {
                            if (value!.isNotEmpty && value.length > 6) {
                              return null;
                            }
                            return 'Please enter a valid password';
                          },
                          obscureText: true,
                          controller: _passwordController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_signInFormKey.currentState!.validate()) {
                              dynamic result =
                                  await authService.signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                              setState(() {
                                isLoading = true;
                              });
                              if (result == null) {
                                setState(() {
                                  isLoading = false;
                                  const SnackBar(
                                      content: Text('No User Found!'));
                                });
                              }
                            }
                          },
                          child: Container(
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Sign in Now!'),
                            ),
                          ),
                        ),
                      ),

                      // const SnackBar(content: Text('No User Found!'))
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
