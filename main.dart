import 'package:flutter/material.dart';
import 'package:laundryminder/main_page.dart';
import 'package:laundryminder/starting_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MainPage(),
        ),
      ),
    );
  }
}
