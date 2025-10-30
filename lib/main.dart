import 'package:flutter/material.dart';
import 'ui/poli_page.dart';

//file main
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Klinik APP',
      home: const PoliPage(),
    );
  }
}
