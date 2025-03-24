// import 'package:flutter/material.dart';
// import 'package:screen_design/app_button.dart';
// import 'package:screen_design/custom_text_field.dart';
// import 'package:screen_design/model/employee_data.dart';
//
// import '../functions.dart';
//
// class AddressesEditScreen extends StatefulWidget {
//    AddressesEditScreen({super.key,required this.listOfAddresses});
//   final List<Address> listOfAddresses;
//
//   @override
//   State<AddressesEditScreen> createState() => _AddressesEditScreenState();
// }
//
// class _AddressesEditScreenState extends State<AddressesEditScreen> {
//   var width ;
//
//   @override
//   Widget build(BuildContext context) {
//     width=MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//
//             Expanded(
//               child: Center(
//                 child: Text(
//                   'Edit Addresses',
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
//             CustomTextField(width*0.9,'Chungi','Address',TextInputType.text,),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: CustomTextField(hintText: 'City'),
//             ),
//             CustomTextField(hintText: 'Post Code'),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: CustomTextField(hintText: 'From Month'),
//             ),
//             Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'From Year')),
//             CustomTextField(hintText: 'To Month'),
//             Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'To Year')),
//             CustomTextField(hintText: 'From Date'),
//             Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: CustomTextField(hintText: 'To Date')),
//             AppButton(onTap: (){
//
//             },),
//           ],
//         ),
//       ),
//     );
//   }
// }
