import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class CustomTextField extends StatelessWidget {
  final TextEditingController _controller;
  final String hint, label;
  final double _width;
  final TextInputType keyboardType;
  bool? isEditAble=true;

  CustomTextField(this._width, this.hint, this.label, this.keyboardType, this._controller,{ this.isEditAble});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      margin: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
              color: Colors.black, // Set the color of the border
              width: 0.5,   )),
      ),
      child: Column(
        children: [
          // label.isNotEmpty? Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     SizedBox(width: _width*0.9,child: Text(label,style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),)),
          //     Container(width: _width*0.1),
          //   ],
          // ):Container(),
          SizedBox(
            width: _width,
            child: Center(
              child: TextFormField(
                cursorColor: Colors.grey,
                controller: _controller,
                keyboardType: keyboardType,

                enabled: isEditAble,
                style: const TextStyle(fontSize: 12, color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: label,
                  labelStyle:  TextStyle(fontSize: 18, fontWeight: FontWeight.normal,color: Colors.black),
                  border: InputBorder.none,
                  // border: const OutlineInputBorder(
                  //   borderRadius: BorderRadius.only(topRight: Radius.circular(7.0),bottomRight: Radius.circular(7.0)),
                  //   //borderSide: BorderSide(color: Colors.red, width: 9.0),
                  // ),
                  contentPadding: const EdgeInsets.all(0),
                  hintText: hint,
                  hintStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.withOpacity(0.8),
                      fontWeight: FontWeight.w300)
                  //labelText: hint,
                  ,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}