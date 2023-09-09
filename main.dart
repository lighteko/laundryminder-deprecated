import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_page.dart';
// import 'starting_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: MainPage(),
        ),
      ),
    );
  }
}
