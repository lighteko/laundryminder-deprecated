import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/machine_card.dart';
import 'widgets/machines/machine.dart';
import 'widgets/utils/machine_types.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/title_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: "Recently used"),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Machine(
                      size: 45,
                      code: 1,
                      machineType: MachineTypes.washer,
                      isRunning: true,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Machine(
                      size: 45,
                      code: 1,
                      machineType: MachineTypes.dryer,
                      isRunning: false,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Machine(
                      size: 45,
                      code: 1,
                      machineType: MachineTypes.shoeWasher,
                      isRunning: true,
                    ),
                  ],
                ),
              ),
              TitleText(text: "Currently using"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: MachineCard(
                  machineType: MachineTypes.washer,
                  isUsing: true,
                ),
              ),
              TitleText(text: "Machines"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: MachineCard(
                        machineType: MachineTypes.dryer,
                        isUsing: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: MachineCard(
                        machineType: MachineTypes.shoeWasher,
                        isUsing: false,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
