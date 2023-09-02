import 'package:flutter/material.dart';

class WasherRunning extends StatelessWidget {
  const WasherRunning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("assets/icons/washer_running.gif"));
  }
}
