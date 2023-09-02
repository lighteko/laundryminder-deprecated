import 'package:flutter/material.dart';

class DryerRunning extends StatelessWidget {
  const DryerRunning({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage("assets/icons/dryer_running.gif"));
  }
}
