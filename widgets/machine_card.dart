import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machines/washer.dart';

class MachineCard extends StatefulWidget {
  final int cardType;
  final bool isUsing;
  const MachineCard({
    super.key,
    required this.cardType,
    required this.isUsing,
  });
  @override
  State<MachineCard> createState() => _MachineCardState();
}

class _MachineCardState extends State<MachineCard> {
  Color colorReturner(int cardType, bool isUsing) {
    if (cardType == 1 && isUsing == true) {
      return const Color(0xff1E3163);
    } else if (cardType == 2 && isUsing == true) {
      return const Color(0xff7C0016);
    }
    switch (cardType) {
      case 1:
        return const Color(0xff9DB5F4);
      case 2:
        return const Color(0xffFFDCF1);
      case 3:
        return const Color(0xffABABAB);
      default:
        return const Color(0xffFFFFFF);
    }
  }

  @override
  Widget build(BuildContext context) {
    int cardType = widget.cardType;
    bool isUsing = widget.isUsing;
    return GestureDetector(
      child: Container(
        width: 320,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorReturner(cardType, isUsing)),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: SizedBox(
                width: 90,
                height: 90,
                child: WasherRunning(),
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
                    color: Colors.white,
                  ),
                ),
                Text(
                  "06 m 35 s",
                  style: TextStyle(
                    fontSize: 41,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
