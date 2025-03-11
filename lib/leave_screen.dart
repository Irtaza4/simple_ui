import 'package:flutter/material.dart';
import 'package:screen_design/functions.dart';
import 'package:screen_design/leave_screen_container.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                minRadius: 20,
                backgroundImage: NetworkImage('https://i.pinimg.com/736x/ad/fc/70/adfc70f15fa1bcb2647a40bb067b1668.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Absence Management',style: TextStyle(
                color: Color(0xff282828),
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Functions.getSVG('assets/images/plus.svg'),
          )
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              child: Row(
                children: [
                  LeaveScreenContainer(containerClr: Color(0xff282828),
                      text: "Allocated",
                      textClr: Colors.white,
                      secondContainerClr: Color(0xffCAD77F)),
                  LeaveScreenContainer(containerClr: Color(0xffF0F2FF),
                      text: "Pending",
                      textClr: Color(0xff282828),
                      secondContainerClr: Color(0xffFFFFFF)),
                  LeaveScreenContainer(containerClr: Color(0xffF0F2FF),
                      text: "Leaves",
                      textClr:Color(0xff282828),
                      secondContainerClr: Color(0xffFFFFFF)),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xff282828),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Leave Balance',style: TextStyle(
                        color: Color(0xffCAD77F,),
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                      Padding(
                        padding: const EdgeInsets.only(right: 200,top: 10),
                        child: Text('Annual Leave Balance',style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                      ),  
                      Functions.getSVG('assets/images/line_svg.svg',),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Total',style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700
                                ),),
                                Text('28',style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14,

                                ),),
                              ],
                            ),
                            Functions.getSVG('assets/images/divider_svg.svg'),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                children: [
                                  Text('Taken',style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  Text('3',style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14,

                                  ),),
                                ],
                              ),
                            ),
                            Functions.getSVG('assets/images/divider_svg.svg'),
                            Column(
                              children: [
                                Text('Remaining',style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700
                                ),),
                                Text('25',style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,

                                ),),
                              ],
                            ),
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200,top: 10),
                        child: Text('Sick Leave Balance',style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                      Functions.getSVG('assets/images/line_svg.svg',),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Total',style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700
                              ),),
                              Text('0',style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 14,

                              ),),
                            ],
                          ),
                          Functions.getSVG('assets/images/divider_svg.svg'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              children: [
                                Text('Taken',style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700
                                ),),
                                Text('0',style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,

                                ),),
                              ],
                            ),
                          ),
                          Functions.getSVG('assets/images/divider_svg.svg'),
                          Column(
                            children: [
                              Text('Remaining',style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700
                              ),),
                              Text('0',style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 14,

                              ),),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
