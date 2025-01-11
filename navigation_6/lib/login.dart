import 'package:flutter/material.dart';
import 'package:navigation_6/home.dart';
import 'package:navigation_6/profile.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(42, 54, 59, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 10, vertical: 200), // Apply uniform padding
        child: Center(
          child: Column(children: [
            Image.asset(
              'assets/images/logo.png',
              width: 400,
            ),
            const SizedBox(height: 20),
            TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(99, 201, 201, 201))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromRGBO(245, 167, 177, 1),
                  )),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                      fontFamily: 'GeistMono',
                      fontSize: 18,
                      color: Color.fromARGB(255, 200, 200, 200),
                      decorationColor: Color.fromARGB(255, 255, 255, 255)),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                ),
                style: TextStyle(
                  fontFamily: 'GeistMono',
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            const SizedBox(height: 10),
            //password field with eye button to toggle visibility
            TextField(
                controller: passwordController,
                obscureText: _isPasswordVisible,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(99, 201, 201, 201))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromRGBO(245, 167, 177, 1),
                    )),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'GeistMono',
                        fontSize: 18,
                        color: Color.fromARGB(255, 200, 200, 200),
                        decorationColor: Color.fromARGB(255, 255, 255, 255)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )),
                style: const TextStyle(
                  fontFamily: 'GeistMono',
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),

            const SizedBox(height: 10),
            TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(99, 201, 201, 201))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromRGBO(245, 167, 177, 1),
                  )),
                  labelText: 'age',
                  labelStyle: TextStyle(
                      fontFamily: 'GeistMono',
                      fontSize: 18,
                      color: Color.fromARGB(255, 200, 200, 200),
                      decorationColor: Color.fromARGB(255, 255, 255, 255)),
                ),
                style: TextStyle(
                  fontFamily: 'GeistMono',
                  fontSize: 20,
                  color: Color.fromARGB(255, 255, 255, 255),
                )),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  if (usernameController.text.isEmpty ||
                      ageController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please fill all fields'),
                      ),
                    );
                    return;
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(
                          username: usernameController.text,
                          age: int.parse(ageController.text),
                        ),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(232, 74, 95, 1),
                    foregroundColor: Color.fromRGBO(255, 255, 255, 1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GeistMono'),
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
