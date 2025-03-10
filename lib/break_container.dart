

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screen_design/model/attendance_data.dart';


 class BreakContainer extends StatelessWidget {
  final  AttendanceEntry  attendanceEntry  ;


  const BreakContainer({super.key,required this.attendanceEntry,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Color(0xff282828),
        borderRadius: BorderRadius.circular(24),
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
                  child: Text( attendanceEntry.clockIn != null && attendanceEntry.clockIn!.isNotEmpty
                      ? '${DateFormat('MMM dd, yyyy').format(DateTime.parse(attendanceEntry.clockIn!))} - ${DateFormat('EEEE').format(DateTime.parse(attendanceEntry.clockIn!))}'
                      : 'N/A',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xffCAD77F),
                    fontSize: 20,
                  ),),
                ),

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
                      attendanceEntry.clockIn!=null?
                      attendanceEntry.clockIn!=""
                          ? DateFormat.jm().format(DateTime.parse(attendanceEntry.clockIn.toString()))
                          : "N/A": "N/A", // Fallback text if clockIn is null
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                        attendanceEntry.clockIn!=null?
                        attendanceEntry.clockIn!=""
                            ? DateFormat("yyyy-MM-dd").format(DateTime.parse(attendanceEntry.clockIn.toString()))
                            : "N/A": "N/A", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                      fontSize: 11,)),
                    Text('Start time',style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 25),
                    decoration: BoxDecoration(
                        color: Color(0xffCAD77F)
                    ),
                  ),
                ),

                Column(children: [
                  Text(attendanceEntry.duration,style: TextStyle(
                      fontSize: 23,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold
                  ),),
                  Text('Duration',style: TextStyle(
                    color: Color(0xffE4E6F1),
                    fontSize: 13,
                    fontWeight: FontWeight.w700
                  ),),
                ],),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 1,vertical: 25),
                    decoration: BoxDecoration(
                        color: Color(0xffCAD77F)
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      attendanceEntry.clockOut!=null?
                      attendanceEntry.clockOut!=""
                      ?DateFormat.jm().format(DateTime.parse(attendanceEntry.clockOut.toString())):
                      "N/A" :"N/A"
                      ,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                    ),),
                    Text(
                        attendanceEntry.clockOut!=null?
                        attendanceEntry.clockOut!=""?
                        DateFormat("yyyy-MM-dd").format(DateTime.parse(attendanceEntry.clockOut.toString())):
                        "N/A":"N/A", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                        fontSize: 11,)),
                    Text('End time',style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,)),
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
