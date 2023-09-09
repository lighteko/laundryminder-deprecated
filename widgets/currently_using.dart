import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/models/machine_model.dart';
import 'package:laundryminder_testplace/laundryminder/services/api_service.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/machine_card.dart';

class CurrentlyUsing extends StatelessWidget {
  CurrentlyUsing({super.key});

  final Future<List<MachineModel>> machines =
      ApiService.getMachinesByIds([1, 4]);

  int machineType(MachineModel data) {
    if (data.status == 2) {
      return 0;
    } else {
      return data.type;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: machines,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var machine = snapshot.data![index];
              return MachineCard(
                  machineType: machineType(machine), isUsing: true);
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
