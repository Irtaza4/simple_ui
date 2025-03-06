import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:screen_design/break_container.dart';

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
        "clock_in": "2025-03-03 09:43:00",
        "clock_out": "2025-03-03 05:43:00",
        "status_2": "clock_in",
        "durtion": "",
        "total_break": "0h:0m"
      },
      {
        "id": "561",
        "clock_in": " ",
        "clock_out": " ",
        "status_2": "pending",
        "durtion": "",
        "total_break": "0h:0m"
      },
    ]
  };

  List<AttendanceData> attendanceData = [];
  List<AttendanceEntry> data = [];

  int selectedDay = -1;

  @override
  void initState() {
    super.initState();
    demodata.forEach((key, item) {
      data.clear();
      item.forEach((dt) {
        data.add(AttendanceEntry.fromJson(dt));
      });
      attendanceData.add(AttendanceData(list:  data,key: key));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'Timesheet\nManagement',
          style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                  final days = demodata.keys.toList()[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedDay = index;
                        });
                      },
                      child: Text(
                        days,
                        style: TextStyle(
                          color: Colors.blueAccent.shade700,
                          fontSize: 18,
                          fontWeight: selectedDay == index
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          if(selectedDay!=-1 ) Expanded(
            child: ListView.builder(
                  itemCount: attendanceData[selectedDay].list.length,
                  itemBuilder: (context,index){
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: BreakContainer(attendanceEntry: attendanceData[selectedDay].list[index])
                    );
                  }),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('Feb 26,2025 - Wednesday',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent.shade700,
              fontSize: 20,
            ),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 10,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true, interval: 2),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {//['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                          return Text(demodata.keys.toList()[value.toInt()]);
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    BarChartGroupData(x: 3, barRods: [BarChartRodData(toY: 9, color: Colors.blue)]),
                    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 3, color: Colors.red)]),
                    BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 5, color: Colors.red)]),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
