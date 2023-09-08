import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:laundryminder_testplace/laundryminder/models/machine_model.dart';

class ApiService {
  static const String baseUrl =
      "https://port-0-laundryminder-fastapi-1xxfe2blm66cw9t.sel5.cloudtype.app";
  static const String machines = "machines";

  static Future<List<MachineModel>> getMachines() async {
    final url = Uri.parse('$baseUrl/$machines');
    final response = await http.get(url);
    List<MachineModel> machineInstances = [];
    if (response.statusCode == 200) {
      final List<dynamic> machines = jsonDecode(response.body);
      for (var machine in machines) {
        machineInstances.add(MachineModel.fromJson(machine));
      }
      return machineInstances;
    }
    throw Error();
  }

  static Future<MachineModel> getMachineById() async {
    final url = Uri.parse('$baseUrl/$machines');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final MachineModel machine = jsonDecode(response.body);

      return machine;
    }
    throw Error();
  }

  static Future<List<MachineModel>> getMachinesByDorm(int dormId) async {
    final url = Uri.parse('$baseUrl/$machines/$dormId');
    final response = await http.get(url);
    List<MachineModel> machineInstances = [];
    if (response.statusCode == 200) {
      final List<dynamic> machines = jsonDecode(response.body);
      for (var machine in machines) {
        machineInstances.add(MachineModel.fromJson(machine));
      }
      return machineInstances;
    }
    throw Error();
  }

  static Future<List<MachineModel>> getMachinesByIds(List<int> ids) async {
    List<MachineModel> machineInstances = [];
    for (int id in ids) {
      final url = Uri.parse('$baseUrl/$machines/?id=$id');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> machines = jsonDecode(response.body);
        for (var machine in machines) {
          machineInstances.add(MachineModel.fromJson(machine));
        }
      }
      return machineInstances;
    }
    throw Error();
  }
}
