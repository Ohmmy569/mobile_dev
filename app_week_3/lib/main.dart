import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 79, 79, 79)),
          appBarTheme: const AppBarTheme(color: Color.fromRGBO(42, 54, 59, 1)),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
            centerTitle: true,
          ),
          body: const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 10), // Apply uniform padding
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Icon(
                    Icons.time_to_leave_outlined,
                    size: 180,
                    color: Color.fromRGBO(232, 74, 95, 1),
                  ),
                  Text(
                    'Thank you for using our service',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    'We hope you have a great day',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 30),
                  Divider(
                    color: Color.fromRGBO(232, 74, 95, 1),
                    thickness: 4,
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Summary of charging details',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 25,
                            color: Color.fromRGBO(232, 74, 95, 1),
                          ),
                          Text(
                            ' Charge Date',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        '11 Decemeber 2024',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.ev_station,
                            size: 25,
                            color: Color.fromRGBO(232, 74, 95, 1),
                          ),
                          Text(
                            ' Charging Station',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        'KMUTNB',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.battery_charging_full,
                            size: 25,
                            color: Color.fromRGBO(232, 74, 95, 1),
                          ),
                          Text(
                            ' Charging Type',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        'DC Fast Charging',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.timer,
                            size: 25,
                            color: Color.fromRGBO(232, 74, 95, 1),
                          ),
                          Text(
                            ' Charging Time',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        '00:11:45',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.bolt,
                            size: 25,
                            color: Color.fromRGBO(232, 74, 95, 1),
                          ),
                          Text(
                            ' Electric Unit',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                        '8.421 kWh',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Divider(
                    color: Color.fromRGBO(232, 74, 95, 1),
                    thickness: 4,
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '100.00 THB',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
