import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyContainer extends StatelessWidget {
  final String iconPath; // Accepts the SVG file path
  final double? iconSize;
  final Color? iconColor;
  final String text;

  MyContainer({
    super.key,
    required this.iconPath,
    this.iconSize,
    this.iconColor,
    required this.text,
  });

  static Widget getSVG(String icon,
      {double? height, double? width, double? size, Color? clr, bool? filled}) {
    return SizedBox(
      height: height ?? size ?? 22,
      width: width ?? size ?? 22,
      child: SvgPicture.asset(
        icon,
        fit: filled != null ? BoxFit.fill : BoxFit.contain,
        height: height ?? size ?? 22,
        width: width ?? size ?? 22,
        color: clr,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double  height= MediaQuery.of( context).size.height;
    double  width= MediaQuery.of( context).size.width;
    return Container(
      height: height*0.14,
      width: width*0.4,
      decoration: BoxDecoration(
        color: const Color(0xff282828),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getSVG(
            iconPath,
            size: iconSize ?? 50, // Default size 50
            clr: iconColor,
          ),
          const SizedBox(height: 10), // Space between icon and text
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
