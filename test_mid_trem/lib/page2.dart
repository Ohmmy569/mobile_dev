import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  //สร้าง constructor ของ class Page2 รับค่า key และ name
  const Page2({super.key, this.name});
  //สร้าง final variable ชื่อ name เพื่อรับข้อมูลจากหน้าก่อนหน้า
  final String? name;
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(50, 129, 208, 1),
          title: Title(
              color: Color.fromRGBO(50, 129, 208, 1),
              child: Text("this is page 2"))),
      body: Column(
        children: [
          //แสดงข้อความที่ได้รับมาจากหน้าก่อนหน้า คือ username
          //?? คือเครื่องหมาย null-aware ที่ใช้เช็คว่าตัวแปรนั้นเป็น null หรือไม่
          //ถ้าเป็น null จะแสดงข้อความ "THIS IS NULL" แทน
          Text(widget.name ?? "THIS IS NULL")
        ],
      ),
    );
  }
}
