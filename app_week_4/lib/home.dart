import 'package:flutter/material.dart';
import 'dart:developer';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String charging_power = 'N/A';
  String charging_time = 'N/A';

  final TextEditingController socController = TextEditingController();
  final TextEditingController targetSocController = TextEditingController();
  final TextEditingController chargingRateController = TextEditingController();
  final TextEditingController voltageController = TextEditingController();
  final TextEditingController batteryCapacityController =
      TextEditingController();
  final TextEditingController chargingEfficiencyController =
      TextEditingController();
  final TextEditingController chargingTimeController = TextEditingController();
  final TextEditingController chargingPowerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          width: 200,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 10), // Apply uniform padding
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/car.png',
                width: 400,
              ),
              const SizedBox(height: 10),
              const Text(
                'BMW Concept i4.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
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
                                    charging_time,
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
                                        color: Color.fromRGBO(232, 74, 95, 1),
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
                                    charging_power,
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
                                        color: Color.fromRGBO(232, 74, 95, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: socController,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Current SOC (%)',
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: TextFormField(
                                  controller: targetSocController,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Target SOC (%)',
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: chargingRateController,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Charging Rate (A)',
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: TextFormField(
                                  controller: voltageController,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Voltage (%)',
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: batteryCapacityController,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Bat Capacity (kWh)',
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: TextFormField(
                                  controller: chargingEfficiencyController,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    labelText: 'Efficiency (%)',
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (socController.text.isNotEmpty &&
                        targetSocController.text.isNotEmpty &&
                        chargingRateController.text.isNotEmpty &&
                        voltageController.text.isNotEmpty &&
                        batteryCapacityController.text.isNotEmpty &&
                        chargingEfficiencyController.text.isNotEmpty) {
                      double soc = double.parse(socController.text);
                      double targetSoc = double.parse(targetSocController.text);
                      double chargingRate =
                          double.parse(chargingRateController.text);
                      double voltage = double.parse(voltageController.text);
                      double batteryCapacity =
                          double.parse(batteryCapacityController.text);
                      double chargingEfficiency =
                          double.parse(chargingEfficiencyController.text);

                      double chargingPower = (chargingRate * voltage) / 1000;

                      double chargingTime =
                          ((targetSoc - soc) * batteryCapacity) /
                              (chargingPower * chargingEfficiency) /
                              100;

                      //LOG all the values
                      log('SOC: $soc');
                      log('Target SOC: $targetSoc');
                      log('Charging Rate: $chargingRate');
                      log('Voltage: $voltage');
                      log('Battery Capacity: $batteryCapacity');
                      log('Charging Efficiency: $chargingEfficiency');
                      log('Charging Power: $chargingPower');
                      log('Charging Time: $chargingTime');

                      setState(() {
                        charging_time = chargingTime.toStringAsFixed(3);
                        charging_power = chargingPower.toStringAsFixed(3);
                      });
                    } else {
                      log('Please fill all the fields');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(232, 74, 95, 1),
                      foregroundColor: Color.fromRGBO(255, 255, 255, 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Calculate",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
