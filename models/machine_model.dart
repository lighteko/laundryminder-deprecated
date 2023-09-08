class MachineModel {
  final int id, code, dorm, type, status;
  DateTime? startedAt;
  MachineModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        code = json["code"],
        dorm = json["dorm"],
        type = json["type"],
        status = json["status"],
        startedAt = json["started_at"];
}
