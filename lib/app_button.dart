import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function()? onTap;
  const AppButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15
        ),
        decoration: BoxDecoration(
          color: Color(0xffCAD77F),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Text('Update',style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 16),),
      ),
    );
  }
}
