import 'package:flutter/material.dart';
import 'package:test_mid_trem/page2.dart';

//main คือ function ที่จะถูกเรียกเมื่อ app ถูก run
void main() {
  runApp(const MyApp());
}

//MyApp คือ class ที่ใช้เป็น root widget ของ app
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

//_MyAppState คือ class ที่ใช้เป็น state ของ MyApp
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //เรียกใช้งาน route โดยกำหนด initialRoute เป็น '/'
      initialRoute: '/',
      //ถ้าใช้ initialRoute จะต้องไม่ใช้ home : ใน MaterialApp
      //ตั้ง route ต่างๆ ของ app
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const Page2(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 140, 38, 1),
        title: Text("This is page 1"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              'https://scontent-bkk1-1.xx.fbcdn.net/v/t39.30808-6/272142769_1347756505678736_2671920356878129761_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGe90TCQelsQ-Duu5U4_TVb8CPI2I14eHDwI8jYjXh4cJSAaFsFONAObcIKPpSDCBgQNMmbx-sidc4wbJPfoENQ&_nc_ohc=FcsaN6Yppa0Q7kNvgFNypHh&_nc_zt=23&_nc_ht=scontent-bkk1-1.xx&_nc_gid=AmwGscsX6RTIq1Q0fsli5oI&oh=00_AYCw9KrZBHXjxo9x_FB6sDxL6UzXhJLnAMSzlml4eQRjzg&oe=6799632D'),
          ElevatedButton(
              onPressed: () => {
                    //เมื่อกดปุ่มจะเปลี่ยนหน้าไปที่ '/page2' พร้อมส่งข้อมูล username ไปด้วย
                    Navigator.pushNamed(context, '/second')
                  },
              child: Text("Go to page 2")),
        ],
      ),
    );
  }
}
