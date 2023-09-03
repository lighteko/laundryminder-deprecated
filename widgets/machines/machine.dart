import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machines/dryer.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/utils/machine_types.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machines/shoe_dryer.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machines/shoe_washer.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machines/washer.dart';

class Machine extends StatelessWidget {
  final bool isRunning;
  final int code;
  final int machineType;
  final double size;

  const Machine({
    super.key,
    required this.size,
    required this.code,
    required this.machineType,
    required this.isRunning,
  });

  Widget machineBuilder(int code, int machineType, bool isRunning) {
    switch (machineType) {
      case MachineTypes.washer:
        return Washer(code: code, isRunning: isRunning);

      case MachineTypes.shoeWasher:
        return ShoeWasher(code: code, isRunning: isRunning);

      case MachineTypes.dryer:
        return Dryer(code: code, isRunning: isRunning);

      case MachineTypes.shoeDryer:
        return ShoeDryer(code: code, isRunning: isRunning);
      case MachineTypes.disabled:
        return const Image(image: AssetImage("assets/icons/disabled.png"));
      default:
        return const Image(image: AssetImage("assets/icons/disabled.png"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: machineBuilder(code, machineType, isRunning),
    );
  }
}
