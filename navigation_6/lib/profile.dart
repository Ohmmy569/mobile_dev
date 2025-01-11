import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String? username;
  final int? age;
  const Profile({super.key, this.username, this.age});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 10), // Apply uniform padding
        child: Center(
          child: Column(children: [
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/user.png',
              width: 150,
            ),
            const Text(
              "Your Profile",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'GeistMono',
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 4, // Adjust the elevation as needed
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      15.0), // Adjust the border radius as needed
                  side: BorderSide(
                    color: Color.fromRGBO(
                        232, 74, 95, 1), // Set the border color here
                    width: 2.0, // Set the border width here
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Name : ',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'GeistMono',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          // widget.username.toString(),
                          widget.username ?? 'Unknown',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'GeistMono',
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Age : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontFamily: 'GeistMono',
                          ),
                        ),
                        Text(
                          widget.age.toString(),
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'GeistMono',
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
