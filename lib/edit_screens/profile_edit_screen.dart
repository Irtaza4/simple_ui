import 'package:flutter/material.dart';
import 'package:screen_design/app_button.dart';
import 'package:screen_design/custom_text_field.dart';

import '../functions.dart';
import '../model/employee_data.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key, required this.personal});
 final Personal personal ;

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();

}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  var width;
  TextEditingController titleController=TextEditingController();
  TextEditingController firstNameController=TextEditingController();
  TextEditingController middleNameController=TextEditingController();
  TextEditingController surnameController=TextEditingController();
  TextEditingController dobController=TextEditingController();
  TextEditingController genderController=TextEditingController();
  TextEditingController maritalController=TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController.text=widget.personal.title;
    firstNameController.text=widget.personal.firstName;
    middleNameController.text=widget.personal.middleName;
    surnameController.text=widget.personal.surname;
    dobController.text=widget.personal.dateOfBirth;
    genderController.text=widget.personal.gender;
    maritalController.text=widget.personal.maritalStatus;
  }

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
              child: Center(
                child: Text(
                  'Edit Personal Details',
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
            CustomTextField(width*0.9,widget.personal.title,'Title',
                TextInputType.text,titleController),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomTextField(width*0.9,widget.personal.firstName,'First Name',
                  TextInputType.text,firstNameController),
            ),
            CustomTextField(width*0.9,widget.personal.middleName,'Middle Name',
                TextInputType.text,middleNameController),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CustomTextField(width*0.9,widget.personal.surname,'Surname',
                  TextInputType.text,surnameController),
            ),
            CustomTextField(width*0.9,widget.personal.dateOfBirth,'Date of Birth',
                TextInputType.text,dobController),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CustomTextField(width*0.9,widget.personal.gender,'Gender',
                    TextInputType.text,genderController)),
            CustomTextField(width*0.9,widget.personal.maritalStatus,'Marital Status',
                TextInputType.text,maritalController),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: AppButton(onTap: (){

              },),
            ),
          ],
        ),
      ),
    );
  }
}
