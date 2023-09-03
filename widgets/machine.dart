import 'package:flutter/material.dart';

abstract class Machine extends StatefulWidget {
  const Machine({super.key});

  @override
  State<Machine> createState() => _MachineState();
}

class _MachineState extends State<Machine> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
