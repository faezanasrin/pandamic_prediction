import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pandemic/screens/home.dart';
import 'package:pandemic/screens/login.dart';

class ScreenSign extends StatelessWidget {
  ScreenSign({super.key});

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
                height: 700.0,
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
                        'Register',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold), // Added fontWeight
                      ),
                      const SizedBox(
                        height: 40,
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
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Hospital/Organisation Name',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Register Number',
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
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 're-Password',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreenHome()),
                          );
                        }, // Added an icon for the button
                        label: const Text('Register'),
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
                                TextSpan(text: "Already have an account? "),
                                TextSpan(
                                    text: "Login",
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
                                    ScreenLogin()), // Directly navigate to SignupPage
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
}
