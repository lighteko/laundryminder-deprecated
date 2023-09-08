import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl =
      "https://port-0-laundryminder-fastapi-1xxfe2blm66cw9t.sel5.cloudtype.app";
  final String machines = "machines";

  void getMachines() async {
    final url = Uri.parse('$baseUrl/$machines');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> machines = jsonDecode(response.body);
      for (var machine in machines) {
        print(machine);
      }
      return;
    }
    throw Error();
  }

  void getMachinesByDorm(int dormId) async {
    final url = Uri.parse('$baseUrl/$machines/$dormId');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      jsonDecode(response.body);
      return;
    }
    throw Error();
  }
}
