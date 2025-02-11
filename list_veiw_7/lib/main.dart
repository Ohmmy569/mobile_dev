import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:list_veiw_7/detail_page.dart';
import 'dart:convert';
import 'model.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'List view API fetch'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const String baseUrl = 'https://itpart.net/mobile/api/'; // API json
  String baseImgUrl = 'https://itpart.net/mobile/images/'; // base Image URL

  Future<List<Product>> fetchData() async {
    final response =
        await http.get(Uri.parse('https://itpart.net/mobile/api/products.php'));
    debugPrint("response: ${response.body}");

    if (response.statusCode == 200) {
      List<dynamic> responseJson = json.decode(response.body);

      return responseJson.map((m) => Product.fromJson(m)).toList();
    } else {
      throw Exception('error fetching data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<Product> item = snapshot.data as List<Product>;
              return render_list(item);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ListView render_list(List<Product> item) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    productId: item[index].id,
                  ),
                ),
              );
            },
            title: Text(
              item[index].title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle:
                Text(item[index].description, style: TextStyle(fontSize: 18)),
            leading: Image.network(
              baseImgUrl + item[index].imageUrl,
              width: 70,
              height: 100,
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: item.length);
  }
}
