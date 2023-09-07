import 'package:flutter/material.dart';

class ShoeDryer extends StatelessWidget {
  final bool isRunning;
  final int code;
  const ShoeDryer({
    required this.code,
    required this.isRunning,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isRunning
        ? const Image(
            image: AssetImage("assets/icons/shoe_dryer_running.gif"),
          )
        : const Image(
            image: AssetImage("assets/icons/shoe_dryer_vacant.png"),
          );
  }
}
