import 'package:flutter/material.dart';

class ShoeWasher extends StatelessWidget {
  final bool isRunning;
  final int code;
  const ShoeWasher({
    required this.code,
    required this.isRunning,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isRunning
        ? const Image(
            image: AssetImage("assets/icons/shoe_washer_running.gif"),
          )
        : const Image(
            image: AssetImage("assets/icons/shoe_washer_vacant.png"),
          );
  }
}
