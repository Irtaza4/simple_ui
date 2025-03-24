
import 'package:flutter/material.dart';
import 'package:screen_design/functions.dart';

class ProfileScreenContainer extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final void Function()? onTap2;
   final  bool  arrow ;

 ProfileScreenContainer({super.key,required this.text, required this.onTap,required this.onTap2,required this.arrow});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xffCAD77F),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(text,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),)
            ],
          ),
        Row(children: [
          InkWell(
              onTap: onTap2,
              child: Functions.getSVG('assets/images/pencil.svg')),
          const SizedBox(width: 10,),
          InkWell(
              onTap: onTap,
              child: arrow==false?Functions.getSVG('assets/images/arrow_down.svg'):
              Functions.getSVG('assets/images/arrow_up.svg',clr: Color(0xff282828),size: 35)
          ),
        ],)
        ],
      ),
    );
  }
}
