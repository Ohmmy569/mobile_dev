import 'package:navigation_6/about.dart';
import 'package:navigation_6/charge.dart';
import 'package:flutter/material.dart';
import 'package:navigation_6/profile.dart';

class Home extends StatefulWidget {
  final String? username;
  final int? age;
  const Home({super.key, this.username, this.age});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? Username;
  int? Age;
  late List<Widget> pages;
  @override
  void initState() {
    super.initState();
    Username = widget.username;
    Age = widget.age;
    pages = [
      const Charge(),
      const About(),
      Profile(
        age: Age,
        username: Username,
      )
    ];
  }

  int _selectedIndex = 0;

  // This widget is the root of your application.
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
          body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.electric_car, size: 30),
                    label: 'Charge',
                    backgroundColor: Color.fromRGBO(232, 74, 95, 1)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.info, size: 30),
                    label: 'About',
                    backgroundColor: Color.fromRGBO(232, 74, 95, 1)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, size: 30),
                    label: 'Profile',
                    backgroundColor: Color.fromRGBO(232, 74, 95, 1)),
              ],
              backgroundColor: Color.fromRGBO(42, 54, 59, 1),
              unselectedLabelStyle: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'GeistMono',
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              selectedLabelStyle: TextStyle(
                  color: Color.fromRGBO(232, 74, 95, 1),
                  fontFamily: 'GeistMono',
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              currentIndex: _selectedIndex,
              selectedItemColor: Color.fromRGBO(232, 74, 95, 1),
              unselectedItemColor: Color.fromRGBO(255, 255, 255, 1),
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              }),
        ));
  }
}
