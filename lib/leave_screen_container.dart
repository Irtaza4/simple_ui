
import 'package:flutter/material.dart';

class LeaveScreenContainer extends StatelessWidget {
  final Color containerClr;
  final String  text;
  final Color textClr;
  final Color secondContainerClr;
  const LeaveScreenContainer({super.key,required this.containerClr,required this.text,
    required this.textClr,required  this.secondContainerClr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 4),
        decoration: BoxDecoration(
          color: containerClr,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(text ,style: TextStyle(
                color:textClr,
                fontSize: 14,
              ),),
            ),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 2),
              decoration: BoxDecoration(
                color: secondContainerClr,

                borderRadius: BorderRadius.circular(100)
              ),
              child: Center(child: Text('0')),
            )
          ],
        ),
      ),
    );
  }
}
