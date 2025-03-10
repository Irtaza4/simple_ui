import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screen_design/break_container.dart';
import 'package:screen_design/functions.dart';
import 'package:screen_design/model/attendance_data.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  Map<String, dynamic> demodata = {
    "Today": [],
    "Yesterday": [],
    "Tuesday": [],
    "Monday": [],
    "Sunday": [],
    "Saturday": [],
    "Friday": [],
    "Thursday": [
      {
        "id": "485",
        "clock_in": "2025-04-03 09:43:00",
        "clock_out": "2025-04-03 17:43:00",
        "status_2": "clock_in",
        "duration": "8h 0m",
        "total_break": "0h:0m"
      },
      {
        "id": "561",
        "clock_in": "2025-04-03 09:43:00",
        "clock_out": "2025-04-03 17:43:00",
        "status_2": "pending",
        "duration": "8h 0m",
        "total_break": "0h:0m"
      },
    ]
  };

  List<AttendanceData> attendanceData = [];
  int selectedDay = 0;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  void _initializeData() {
    attendanceData.clear();
    demodata.forEach((key, value) {
      List<AttendanceEntry> entries = [];
      for (var dt in value) {
        entries.add(AttendanceEntry.fromJson(dt));
      }
      attendanceData.add(AttendanceData(list: entries, key: key));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Color(0xffCAD77F),
                      borderRadius: BorderRadius.circular(100)),
                  child: Functions.getSVG('assets/images/three_lines.svg')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Timesheet Management',
                style: TextStyle(
                  color: Color(0xff282828),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Functions.getSVG('assets/images/bell_icon.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: demodata.keys.length,
                itemBuilder: (context, index) {
                  final day = demodata.keys.toList()[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedDay = index;
                        });
                      },
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                            color: selectedDay == index
                                ? Color(0xff282828)
                                : Color(0xffF0F2FF),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text(
                            day,
                            style: TextStyle(
                              color: selectedDay == index
                                  ? Color(0xffFFFFFF)
                                  : Color(0xff282828),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: attendanceData.isNotEmpty &&
                selectedDay < attendanceData.length &&
                attendanceData[selectedDay].list.isNotEmpty
                ? ListView.builder(
              itemCount: attendanceData[selectedDay].list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: BreakContainer(
                    attendanceEntry: attendanceData[selectedDay].list[index],
                  ),
                );
              },
            )
                : Center(
              child: Text(
                'No Attendance Data Available',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
