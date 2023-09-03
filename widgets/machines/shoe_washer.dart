import 'package:flutter/material.dart';

class ShoeWasherRunning extends StatelessWidget {
  const ShoeWasherRunning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: AssetImage("assets/icons/shoewasher_running.gif"));
  }
}
