import 'package:flutter/material.dart';
import 'package:pretest_ting/page1.dart';
import 'package:pretest_ting/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/page2': (context) => const Page1(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.num});
  final int? num;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final username = TextEditingController();
  final name = TextEditingController();
  final age = TextEditingController();

  String display = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ohmmy",
          style: TextStyle(
              color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("username"),
                      hintText: "Ohmmy"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: age,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("age"),
                    hintText: "Ohmmy"),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("name"),
                    hintText: "Ohmmy"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("AA"),
                  Text("BB"),
                  Text("CC"),
                  Text("DD"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("this is : ${widget.num}"),
                  Text("BB"),
                  Text("CC"),
                  Text("DD"),
                ],
              ),
              Icon(Icons.home),
              Text("THIS IS ${display}"),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      display = username.text;
                    });
                  },
                  child: Text("SUBMIT")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page2');
                  },
                  child: Text("GO TO .."))
            ],
          ),
        ),
      ),
    );
  }
}
