import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pandemic/screens/home.dart';
import 'package:pandemic/screens/sign.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6178BB),
      body: SafeArea(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 450.0,
                width: 350.0,
                child: Container(
                  decoration: BoxDecoration(
                    color:
                        Colors.white, // Set color here inside the BoxDecoration
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Center horizontally
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold), // Added fontWeight
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          checkLogin(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenHome()),
                          );
                        }, // Added an icon for the button
                        label: const Text('Login'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        child: RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w200,
                                  ),
                              children: const <TextSpan>[
                                TextSpan(text: "Haven't you joined yet? "),
                                TextSpan(
                                    text: "Register",
                                    style: TextStyle(
                                      color: Color(0xFF6178BB),
                                      fontWeight: FontWeight.bold,
                                    ))
                              ]),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ScreenSign()), // Directly navigate to SignupPage
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      // Navigate to home or show a successful login message
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          content: Text('Username and password do not match'),
        ),
      );
    }
  }
}
