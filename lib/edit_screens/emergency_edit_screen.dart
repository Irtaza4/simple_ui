//
// import 'package:flutter/material.dart';
// import 'package:screen_design/app_button.dart';
// import 'package:screen_design/custom_text_field.dart';
// import 'package:screen_design/model/employee_data.dart';
//
// import '../functions.dart';
//
// class EmergencyEditScreen extends StatelessWidget {
//   const EmergencyEditScreen({super.key,required this.emergencyContact});
//   final EmergencyContact  emergencyContact;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//
//             Expanded(
//               child: Center(
//                 child: Text(
//                   'Edit Emergency Contact',
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 20),
//           ],
//
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: Functions.getSVG('assets/images/logout_type.svg'),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
//           child: Column(
//             children: [
//               CustomTextField(hintText: 'UK Address',),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Full Name'),
//               ),
//               CustomTextField(hintText: 'Relationship'),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Email'),
//               ),
//               CustomTextField(hintText: 'Postcode'),
//               Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   child: CustomTextField(hintText: 'Address')),
//
//               CustomTextField(hintText: 'City'),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Tel No'),
//               ),
//               CustomTextField(hintText: 'Mobile'),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Work Phone'),
//               ),
//               CustomTextField(hintText: 'Reference'),
//
//               Padding(
//                 padding: const EdgeInsets.only(top: 10),
//                 child: AppButton(onTap: (){
//
//                 },),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
