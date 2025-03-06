class AttendanceData {
 // final Map<String, List<AttendanceEntry>> data;
  String key;
  List<AttendanceEntry> list;

  AttendanceData({required this.list,required this.key});


}

class AttendanceEntry {
  final String id;
  final String? clockIn;
  final String? clockOut;
  final String status;
  final String duration;
  final String totalBreak;

  AttendanceEntry({
    required this.id,
    this.clockIn,
    this.clockOut,
    required this.status,
    required this.duration,
    required this.totalBreak,
  });

  factory AttendanceEntry.fromJson(Map<String, dynamic> json) {
    return AttendanceEntry(
      id: json['id'],
      clockIn: json['clock_in'] == null || json['clock_in'] == "0000-00-00 00:00:00" ? null : json['clock_in'],
      clockOut: json['clock_out'] == null || json['clock_out'] == "0000-00-00 00:00:00" ? null : json['clock_out'],
      status: json['status_2'],
      duration: json['durtion'].isEmpty ? "0h:0m" : json['durtion'],
      totalBreak: json['total_break'],
    );
  }
}
