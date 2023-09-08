import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/models/machine_model.dart';
import 'package:laundryminder_testplace/laundryminder/services/api_service.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/recently_used.dart';
import 'widgets/machine_card.dart';
import 'widgets/machines/machine.dart';
import 'widgets/utils/machine_types.dart';
import 'package:laundryminder_testplace/laundryminder/widgets/title_text.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final Future<List<MachineModel>> machines = ApiService.getMachines();

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
                    TitleText(text: "Recently used"),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: RecentlyUsed(),
                    ),
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var machine = snapshot.data![index];
                        return Text('${machine.id}');
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
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

//  Padding(
//               padding: EdgeInsets.symmetric(horizontal: 30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TitleText(text: "Recently used"),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 15,
//                     ),
//                     child: Row(
//                       children: [
//                         Machine(
//                           size: 45,
//                           code: 1,
//                           machineType: MachineTypes.washer,
//                           isRunning: true,
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Machine(
//                           size: 45,
//                           code: 1,
//                           machineType: MachineTypes.dryer,
//                           isRunning: false,
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Machine(
//                           size: 45,
//                           code: 1,
//                           machineType: MachineTypes.shoeWasher,
//                           isRunning: true,
//                         ),
//                       ],
//                     ),
//                   ),
//                   TitleText(text: "Currently using"),
//                   Padding(
//                     padding: EdgeInsets.symmetric(vertical: 15),
//                     child: MachineCard(
//                       machineType: MachineTypes.washer,
//                       isUsing: true,
//                     ),
//                   ),
//                   TitleText(text: "Machines"),
//                   Padding(
//                     padding: EdgeInsets.symmetric(vertical: 15),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: 8),
//                           child: MachineCard(
//                             machineType: MachineTypes.dryer,
//                             isUsing: false,
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.symmetric(vertical: 8),
//                           child: MachineCard(
//                             machineType: MachineTypes.shoeWasher,
//                             isUsing: false,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );