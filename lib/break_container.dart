

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screen_design/model/attendance_data.dart';


 class BreakContainer extends StatelessWidget {
  final  AttendanceEntry  attendanceEntry  ;


  const BreakContainer({super.key,required this.attendanceEntry,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text('Feb 26,2025 - Wednesday',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent.shade700,
                    fontSize: 20,
                  ),),
                ),
                Icon(Icons.edit,color: Colors.blueAccent.shade700,)
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      attendanceEntry.clockIn != null
                          ? DateFormat.jm().format(DateTime.parse(attendanceEntry.clockIn.toString()))
                          : "N/A", // Fallback text if clockIn is null
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent.shade700,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                        attendanceEntry.clockIn!=null?
                        DateFormat("yyyy-MM-dd").format(DateTime.parse(attendanceEntry.clockIn.toString())):
                        "N/A", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                      fontSize: 15,)),
                    Text('Start time',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 25),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200
                    ),
                  ),
                ),
                Column(children: [
                  Text(attendanceEntry.duration,style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                  ),),
                  Text('Duration',style: TextStyle(

                    color: Colors.grey,
                    fontSize: 18,
                  ),),
                ],),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 25),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      attendanceEntry.clockOut!=null?
                      DateFormat.jm().format(DateTime.parse(attendanceEntry.clockOut.toString())):
                      "N/A"
                      ,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                      fontSize: 18,
                    ),),
                    Text(
                        attendanceEntry.clockIn!=null?
                        DateFormat("yyyy-MM-dd").format(DateTime.parse(attendanceEntry.clockOut.toString())):
                        "N/A", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                      fontSize: 15,)),
                    Text('End time',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,)),
                  ],
                ),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: .1),
              decoration: BoxDecoration(
                color: Colors.grey.shade700
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text('Break time - ${attendanceEntry.totalBreak}',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent.shade700,
                    fontSize: 20,
                  ),),
                ),
                Icon(Icons.edit,color: Colors.blueAccent.shade700,)
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 60),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      attendanceEntry.clockIn != null
                          ? DateFormat.jm().format(DateTime.parse(attendanceEntry.clockIn.toString()))
                          : "N/A", // Fallback text if clockIn is null
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent.shade700,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                        attendanceEntry.clockIn!=null?
                        DateFormat("yyyy-MM-dd").format(DateTime.parse(attendanceEntry.clockIn.toString())):
                        "N/A", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                      fontSize: 15,)),
                    Text('Start time',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 25),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200
                    ),
                  ),
                ),
                Column(children: [
                  Text(attendanceEntry.duration,style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                  ),),
                  Text('Duration',style: TextStyle(

                    color: Colors.grey,
                    fontSize: 18,
                  ),),
                ],),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 25),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      attendanceEntry.clockOut!=null?
                      DateFormat.jm().format(DateTime.parse(attendanceEntry.clockOut.toString())):
                      "N/A"
                      ,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                      fontSize: 18,
                    ),),
                    Text(
                        attendanceEntry.clockIn!=null?
                        DateFormat("yyyy-MM-dd").format(DateTime.parse(attendanceEntry.clockOut.toString())):
                        "N/A", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent.shade700,
                      fontSize: 15,)),
                    Text('End time',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,)),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
