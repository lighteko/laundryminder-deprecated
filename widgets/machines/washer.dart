import 'package:flutter/material.dart';

class Washer extends StatelessWidget {
  final int code;
  final bool isRunning;
  const Washer({
    required this.code,
    required this.isRunning,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isRunning
        ? const Image(
            image: AssetImage("assets/icons/washer_running.gif"),
          )
        : const Image(
            image: AssetImage("assets/icons/washer_vacant.png"),
          );
  }
}
