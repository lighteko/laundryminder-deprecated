import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/models/machine_model.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machines/machine.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/api_service.dart';

class RecentlyUsed extends StatelessWidget {
  RecentlyUsed({super.key});

  final Future<List<MachineModel>> machines =
      ApiService.getMachinesByIds([1, 2, 3]);

  int machineType(MachineModel data) {
    if (data.status == 2) {
      return 0;
    } else {
      return data.type;
    }
  }

  bool isRunning(MachineModel data) {
    if (data.status == 0) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: machines,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            itemCount: 3,
            itemBuilder: (context, index) {
              var machine = snapshot.data![index];
              return Machine(
                size: 45,
                code: machine.code,
                machineType: machineType(machine),
                isRunning: isRunning(machine),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
