import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laundryminder/main_page.dart';
import 'package:laundryminder/starting_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: const Center(
          child: MainPage(),
        ),
      ),
    );
  }
}
