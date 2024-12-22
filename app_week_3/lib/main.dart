import 'package:flutter/material.dart';
import 'dart:developer';

double soc = 36;
double target_soc = 100;
double charging_rate = 18.4;
double voltage = 255;
double battery_capacity = 38.5;
double charging_efficiency = 0.84;

double charging_time = 7.085;
double charging_power = 4.1400;

void main() {
  runApp(const MyApp());
}

void calculate() {
  //log all variables to the console
  charging_power = (charging_rate * voltage) / 1000;
  charging_time = target_soc *
      battery_capacity /
      100 /
      (charging_power * charging_efficiency);
  log('SOC: $soc');
  log('Target SOC: $target_soc');
  log('Voltage: $voltage');
  log('Battery Capacity: $battery_capacity');
  log('Charging Efficiency: $charging_efficiency');
  log('Charging Rate: $charging_rate');
  log('Charging Power: $charging_power');
  log('Charging Time: $charging_time');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 255, 255)),
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
          body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 10), // Apply uniform padding
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Image.asset(
                    'assets/images/car.png',
                    width: 400,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'BMW Concept i4.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  const SizedBox(height: 30),
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
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '$charging_time',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 45),
                                      ),
                                      Transform.translate(
                                        offset: Offset(0, -10),
                                        child: Text(
                                          'Charging Time (hrs)',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color:
                                                Color.fromRGBO(232, 74, 95, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '$charging_power',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 45),
                                      ),
                                      Transform.translate(
                                        offset: Offset(0, -10),
                                        child: Text(
                                          'Charging Power (kWh)',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color:
                                                Color.fromRGBO(232, 74, 95, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Current SOC (%)',
                                        labelStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //when the value changes, update the soc variable and recalculate the charging time
                                      onChanged: (value) {
                                        soc = double.parse(value);
                                        calculate();
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Target SOC (%)',
                                        labelStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        target_soc = double.parse(value);
                                        calculate();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Charging Rate (A)',
                                        labelStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //when the value changes, update the soc variable and recalculate the charging time
                                      onChanged: (value) {
                                        charging_rate = double.parse(value);
                                        calculate();
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Voltage (%)',
                                        labelStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        voltage = double.parse(value);
                                        calculate();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Bat Capacity (kWh)',
                                        labelStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //when the value changes, update the soc variable and recalculate the charging time
                                      onChanged: (value) {
                                        battery_capacity = double.parse(value);
                                        calculate();
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: 'Efficiency (%)',
                                        labelStyle: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onChanged: (value) {
                                        charging_efficiency =
                                            double.parse(value);
                                        calculate();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
