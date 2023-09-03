import 'dart:async';

import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machines/machine.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/utils/machine_card_types.dart';

class MachineCard extends StatefulWidget {
  final int machineType;
  final bool isUsing;
  const MachineCard({
    super.key,
    required this.machineType,
    required this.isUsing,
  });
  @override
  State<MachineCard> createState() => _MachineCardState();
}

class _MachineCardState extends State<MachineCard> {
  late Timer timer;
  int totalTime = 50 * 60;
  Color cardColor(int cardType, bool isUsing) {
    if (cardType == MachineCardTypes.washer && isUsing == true) {
      return const Color(0xff1E3163);
    } else if (cardType == MachineCardTypes.dryer && isUsing == true) {
      return const Color(0xff7C0016);
    }
    switch (cardType) {
      case MachineCardTypes.washer:
        return const Color(0xff9DB5F4);
      case MachineCardTypes.dryer:
        return const Color(0xffEE9595);
      case MachineCardTypes.disabled:
        return const Color(0xffABABAB);
      default:
        return const Color(0xffFFFFFF);
    }
  }

  Color machineIndexColor(int cardType, bool isUsing) {
    if (isUsing == true) {
      return const Color(0xffFFFFFF);
    }
    switch (cardType) {
      case MachineCardTypes.washer:
        return const Color(0xff064667);
      case MachineCardTypes.dryer:
        return const Color(0xffB83C40);
      case MachineCardTypes.disabled:
        return const Color(0xff525252);
      default:
        return const Color(0xffFFFFFF);
    }
  }

  Color machineTimeColor(int cardType, bool isUsing) {
    if (isUsing == true) {
      return const Color(0xffFFFFFF);
    }
    switch (cardType) {
      case MachineCardTypes.washer:
        return const Color(0xff4066B0);
      case MachineCardTypes.dryer:
        return const Color(0xff9F292E);
      case MachineCardTypes.disabled:
        return const Color(0xffE0E0E0);
      default:
        return const Color(0xffFFFFFF);
    }
  }

  String timeString(int totalTime) {
    return "${totalTime ~/ 60} m ${totalTime % 60} s";
  }

  void onTick(Timer timer) {
    setState(() {
      totalTime -= 1;
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
  }

  @override
  Widget build(BuildContext context) {
    int cardType = widget.machineType.abs();
    int machineType = widget.machineType;
    bool isUsing = widget.isUsing;
    return GestureDetector(
      child: Container(
        width: 320,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cardColor(cardType, isUsing)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: SizedBox(
                width: 90,
                height: 90,
                child: Machine(
                    size: 90,
                    code: 2,
                    machineType: machineType,
                    isRunning: true),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Washer No.2",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: machineIndexColor(cardType, isUsing),
                  ),
                ),
                Text(
                  timeString(totalTime),
                  style: TextStyle(
                    fontSize: 41,
                    fontWeight: FontWeight.bold,
                    color: machineTimeColor(cardType, isUsing),
                    height: 0.8,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
