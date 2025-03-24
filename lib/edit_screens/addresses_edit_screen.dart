import 'package:flutter/material.dart';
import 'package:screen_design/app_button.dart';
import 'package:screen_design/custom_text_field.dart';

import '../functions.dart';

class AddressesEditScreen extends StatelessWidget {
  const AddressesEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
              child: Center(
                child: Text(
                  'Edit Addresses',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
          ],

        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Functions.getSVG('assets/images/logout_type.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Column(
          children: [
            CustomTextField(hintText: 'Address',),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomTextField(hintText: 'City'),
            ),
            CustomTextField(hintText: 'Post Code'),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomTextField(hintText: 'From Month'),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CustomTextField(hintText: 'From Year')),
            CustomTextField(hintText: 'To Month'),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CustomTextField(hintText: 'To Year')),
            CustomTextField(hintText: 'From Date'),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CustomTextField(hintText: 'To Date')),
            AppButton(onTap: (){

            },),
          ],
        ),
      ),
    );
  }
}
