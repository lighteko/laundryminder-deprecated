import 'package:flutter/material.dart';
import 'package:laundryminder_testplace/laundryminder/models/machine_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/api_service.dart';

class RecentlyUsed extends StatelessWidget {
  RecentlyUsed({super.key});
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  final Future<List<MachineModel>> machines = ApiService.getMachinesByIds();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
