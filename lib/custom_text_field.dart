
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({super.key,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        enabled: true,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black
          ),
        ),

      ),
    );
  }
}
