import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 10), // Apply uniform padding
        child: Center(
          child: Column(children: [
            const SizedBox(height: 10),
            const Text(
              "About Us",
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
                        Flexible(
                          child: Text(
                            '       Charge is a mobile application that helps you find the nearest charging station for your electric vehicle It also provides information about the charging station, such as the type of charger, the availability of the charger, and the cost of charging. Charge is a mobile application that helps you find the nearest charging station for your electric vehicle.  ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'GeistMono',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
