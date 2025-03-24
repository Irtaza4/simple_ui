// import 'package:flutter/material.dart';
// import 'package:screen_design/app_button.dart';
// import 'package:screen_design/custom_text_field.dart';
// import 'package:screen_design/model/employee_data.dart';
//
// import '../functions.dart';
//
// class KeyInfoEditScreen extends StatelessWidget {
//   const KeyInfoEditScreen({super.key, required  this.keyInfo});
//   final KeyInfo keyInfo;
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
//                   'Edit Key Info',
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
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
//         child: Column(
//           children: [
//             CustomTextField(hintText: 'Employment Type',),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: CustomTextField(hintText: 'Ni Number'),
//             ),
//             CustomTextField(hintText: 'Nationality'),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: CustomTextField(hintText: 'Country of Birth'),
//             ),
//             CustomTextField(hintText: 'Place of Birth'),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: AppButton(onTap: (){
//
//                 },),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
