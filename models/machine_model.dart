class MachineModel {
  final String id, code, dorm, type, status, startedAt;
  MachineModel.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        code = json["code"],
        dorm = json["dorm"],
        type = json["type"],
        status = json["status"],
        startedAt = json["started_at"];
}
