import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future fetchData() async {
  final res = await http.get(Uri.parse("http://localhost:4000/user"));
  if (res.statusCode == 200) {
    final body = json.decode(res.body);
    return body;
  } else {
    throw Exception('Failed to load data');
  }
}

class MyFutureBuilderPage extends StatefulWidget {
  const MyFutureBuilderPage({super.key});

  @override
  State<MyFutureBuilderPage> createState() => _MyFutureBuilderPageState();
}

class _MyFutureBuilderPageState extends State<MyFutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Text('FutureBuilder Page'),
        ),
        body: Center(
          child: FutureBuilder(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('Result: ${snapshot.data}',
                    style: TextStyle(fontSize: 20));
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ));
  }
}
