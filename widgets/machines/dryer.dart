import 'package:flutter/material.dart';

class Dryer extends StatelessWidget {
  final bool isRunning;
  final int code;
  const Dryer({
    required this.code,
    required this.isRunning,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isRunning
        ? const Image(
            image: AssetImage("assets/icons/dryer_running.gif"),
          )
        : const Image(
            image: AssetImage("assets/icons/dryer_vacant.png"),
          );
  }
}
