// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Konya Şehir Koleji W4'),
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
  // ---------------> Buraya degisklenleri ekle
  Color renk0 = Colors.grey;
  Color renk1 = Colors.blue;
  Color renk2 = Colors.red;
  int sayi1 = 1;

  // ---------------> Buraya Voidleri ekle
  void islem1() {
    setState(() {
      renk0 = renk1;
      sayi1 = sayi1 * 2;
    });
  }

  void islem2() {
    setState(() {
      renk0 = renk2;
      sayi1 = sayi1 * 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ---------------> Buraya widgetleri ekle

            ElevatedButton(
              onPressed: islem1,
              child: Text("İŞLEM 1"),
            ),

            SizedBox(
              height: 50,
            ),

            Container(
              height: 50,
              width: 150,
              alignment: Alignment.center,
              color: renk0,
              child: Text(
                sayi1.toString(),
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),

            SizedBox(
              height: 50,
            ),

            ElevatedButton(
              onPressed: islem2,
              child: Text("İŞLEM 2"),
            ),

            // ---------------> Buraya widgetleri ekle

            SizedBox(
              height: 150,
            ),

            IconButton(
              onPressed: () {
                setState(() {
                  renk0 = Colors.grey;
                  sayi1 = 1;
                });
              },
              icon: Icon(
                Icons.restore,
                size: 25,
                color: Colors.green,
              ),
            ),
            // ---------------> Buraya widgetleri ekle
          ],
        ),
      ),
    );
  }
}
