import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Functions{


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
  }}