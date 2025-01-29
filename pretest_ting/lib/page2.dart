import 'package:flutter/material.dart';
import 'package:pretest_ting/main.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key, this.name});
  final String? name;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page2",
          style: TextStyle(
              color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text("this is another ${widget.name}"),
          ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                    (route) => false);
              },
              child: Text("go to pafge 1"))
        ],
      ),
    );
  }
}
