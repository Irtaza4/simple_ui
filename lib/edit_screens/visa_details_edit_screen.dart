//
// import 'package:flutter/material.dart';
// import 'package:screen_design/app_button.dart';
// import 'package:screen_design/custom_text_field.dart';
// import 'package:screen_design/model/employee_data.dart';
//
// import '../functions.dart';
//
// class VisaDetailsEditScreen extends StatelessWidget {
//   const VisaDetailsEditScreen({super.key,required this.visa});
//   final Visa  visa;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         scrolledUnderElevation: 0,
//         elevation: 0,
//
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//
//             Expanded(
//               child: Center(
//                 child: Text(
//                   'Edit Visa Details',
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
//               CustomTextField(hintText: 'Right To Work Check Method',),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Visa Type ID'),
//               ),
//               CustomTextField(hintText: 'Visa Type Name'),
//
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Passport No'),
//               ),
//               CustomTextField(hintText: 'Passport Expiry'),
//               Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   child: CustomTextField(hintText: 'Passport Issue Country')),
//
//               CustomTextField(hintText: 'Home Office Ref'),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Share Code'),
//               ),
//               CustomTextField(hintText: 'Share Expiry'),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Check Conducted Date'),
//               ),
//               CustomTextField(hintText: 'Immigration Status Expiry'),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'ECS Ref No'),
//               ),
//               CustomTextField(hintText: 'ECS Expiry Date'),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Date Issued'),
//               ),
//               CustomTextField(hintText: 'E Visa'),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'Biometric'),
//               ),
//               CustomTextField(hintText: 'Biometric Expiry'),
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
