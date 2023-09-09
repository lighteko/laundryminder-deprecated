import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/models/machine_model.dart';
import 'package:laundryminder_testplace/laundryminder/services/api_service.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/currently_using.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/recently_used.dart';
import 'widgets/machine_card.dart';
import 'widgets/machines/machine.dart';
import 'widgets/utils/machine_types.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/title_text.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final Future<List<MachineModel>> machines = ApiService.getMachinesByDorm(3);

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
    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
          future: machines,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleText(text: "Recently used"),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: RecentlyUsed(),
                    ),
                    const TitleText(text: "Currently Using"),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: CurrentlyUsing(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Column(
                        children: [
                          const TitleText(text: "Machines"),
                          ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              var machine = snapshot.data![index];
                              return MachineCard(
                                  machineType: machineType(machine),
                                  isUsing: false);
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
