import 'package:flutter/material.dart';
import 'package:screen_design/functions.dart';
import 'package:screen_design/model/employee_data.dart';
import 'package:screen_design/profile_screen_container.dart';

class ProfileScreen extends StatefulWidget {
   ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final Map<String, dynamic> data = {
    "personal": {
      "title": "Mr",
      "first_name": "Chi",
      "middle_name": "",
      "surname": "Young",
      "date_of_birth": "1985-11-28",
      "gender": "Male",
      "martial_status": "Married"
    },
    "addresses": [
      {
        "id": "6",
        "previous_address": "Chichester Road",
        "city": "London",
        "post_code": "E11 3PH",
        "from_date": "2024-12-13",
        "to_date": "2025-02-06",
        "current_address": "yes",
      }
    ],
    "emergency_contact": {
      "uk_address": "yes",
      "full_name": "Jones Bell",
      "relationship": "Friend",
      "email": "jonesbell@gotmail.com",
      "postcode": "",
      "address": "Onra Road",
      "city": "Ilford",
      "tel_no": "02086584432",
      "mobile": "09987654654",
      "work_phone": "02086584433",
      "reference": ""
    },
    "key_info": {
      "employment_type": "Restricted Hours",
      "ni_number": "SC753459C",
      "nationality": "China",
      "country_of_birth": "China",
      "place_of_birth": "Beijing"
    },
    "visa": {
      "right_to_work_check_method": "Online Check",
      "visa_type_id": "160",
      "visa_type_name": "Student",
      "passport_no": "yy654331",
      "passport_expiry": "2025-06-25",
      "passport_issue_country": "",
      "home_office_ref": "ref566432",
      "share_code": "wss4567",
      "share_expiry": "2026-11-30",
      "check_conducted_date": "2025-02-26",
      "immigration_status_expiry": "2025-02-19",
      "ecs_ref_no": "ref443",
      "ecs_expiry_date": "0000-00-00",
      "date_issued": "2025-02-26",
      "e_visa": "yes",
      "biometric": "",
      "biometric_expiry": "0000-00-00"
    },
    "bank_details": {
      "bank_name": "Lloyds Bank",
      "account_holder_name": "Sanwal Khan",
      "sort_code": "22-88-45",
      "account_number": "334544366",
      "other_information": "nill",
    }
  };

  void  loadData(){
    employeeData  = EmployeeData(personal:
  Personal.fromJson(data['personal']), addresses: (data['addresses'] as List)
      .map((e) => Address.fromJson(e))
      .toList(),
       emergencyContact: EmergencyContact.fromJson(data['emergency_contact']),
      keyInfo: KeyInfo.fromJson(data['key_info']), visa: Visa.fromJson(data['visa']),
      bankDetails: BankDetails.fromJson(data['bank_details']),
      showPersonalInfo: false, showAddress: false,
      showBankDetails: false,
      showEmergencyContact: false, showKeyInfo: false, showVisa: false);
     setState(() {

      });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

   EmployeeData?  employeeData;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/ad/fc/70/adfc70f15fa1bcb2647a40bb067b1668.jpg'),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Profile',
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              //personal_info
              if(employeeData!=null)
              Column(
                children: [
        
                  ProfileScreenContainer(text: 'Personal Details', onTap: (){
                     employeeData!.showPersonalInfo=!employeeData!.showPersonalInfo;
                     setState(() {
        
                     });
                  }),
                  if(employeeData!.showPersonalInfo)
                  Container(
                    decoration:BoxDecoration(
                      color: Color(0xff262626),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(5))
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(

                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 20),
                                   child: Row(
                                     children: [
                                       Text('Title',style: TextStyle(
                                           fontSize: 14,
                                           color: Color(0xffffffff),
                                         fontWeight: FontWeight.bold
                                       ),),
                                     ],
                                   ),
                                 )   ,
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.personal.title,style: TextStyle(
                                              color: Colors.white,
                                            fontSize: 16,
                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('First Name',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                      fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.personal.firstName,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),
        
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Text('Surname',style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffffffff),
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Row(
                                      children: [
                                        Text(employeeData!.personal.surname,style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,

                                        ),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Functions.getSVG('assets/images/white_line.svg'),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Marital Status',style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Text(employeeData!.personal.maritalStatus,style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,

                                  ),)
                                ],
                              ),
                            ),
        
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text('Gender',style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.personal.gender,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('DOB',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.personal.dateOfBirth,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),
        
                            ],
                          ),
                        ),

        
                      ],
                    ),
                  )
                ],
        
              ),
              const SizedBox(height: 10,),
              //address
              if(employeeData!=null)
              Column(
                children: [
                  ProfileScreenContainer(text: 'Addresses', onTap: (){
                    employeeData!.showAddress=!employeeData!.showAddress;
                    setState(() {
        
                    });
                  }),
                  if(employeeData!.showAddress)
                    Container(
                      height: 50.0*(employeeData!.addresses.length),
                      decoration:BoxDecoration(
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(5))
                      ),
                      child:ListView.builder(

                          itemCount: employeeData!.addresses.length,
                          itemBuilder: (context,index){
                            return  Container(
                              decoration: BoxDecoration(

                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Address : ${employeeData!.addresses[index].previousAddress} ,'
                                          'City : ${employeeData!.addresses[index].city} , Post Code ${employeeData!.addresses[index].postCode}',
                                      style: TextStyle(color: Colors.white),)
                                    ],
                                  )
                                ],
                              ),
                            );
                      })
                    )

                ],
              ),
              const SizedBox(height: 10,),
              //emergency contact
              if(employeeData!=null)
              Column(
                children: [
                  ProfileScreenContainer(text: 'Emergency Contact', onTap: (){
                    employeeData!.showEmergencyContact=!employeeData!.showEmergencyContact;
                    setState(() {
        
                    });
                  }),
                  if(employeeData!.showEmergencyContact)
                    Container(
                      decoration:BoxDecoration(
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(5))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('UK address',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.emergencyContact.ukAddress,style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Full Name',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.emergencyContact.fullName,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),
        
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text('Relationship',style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.emergencyContact.relationship,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Email',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.emergencyContact.email,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),
        
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Postcode',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.emergencyContact.postcode,style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Address',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.emergencyContact.address,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),
        
        
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text('City',style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.emergencyContact.city,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Tel No',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.emergencyContact.telNo,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),
        
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Mobile',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.emergencyContact.mobile,style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Work phone',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.emergencyContact.workPhone,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),
        
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Reference',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Text(employeeData!.emergencyContact.reference,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff)
                                      ),),
                                      Text('',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                ),
        
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
              const SizedBox(height: 10,),
              //key_info
              if(employeeData!=null)
              Column(
                children: [
                  ProfileScreenContainer(text: 'Key Info', onTap: (){
                    employeeData!.showKeyInfo=!employeeData!.showKeyInfo;
                    setState(() {
        
                    });
                  }),
                  if(employeeData!.showKeyInfo)
                    Container(
                      decoration:BoxDecoration(
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(5))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(

                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Employment Type',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      )   ,
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.keyInfo.employmentType,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Ni Number',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.keyInfo.niNumber,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text('Nationality',style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.keyInfo.nationality,style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,

                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Country of birth',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.keyInfo.countryOfBirth,style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Place of birth',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.keyInfo.placeOfBirth,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text('',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),


                        ],
                      ),
                    )
                ],
              ),
              const SizedBox(height: 10,),
              //visa details
              if(employeeData!=null)
              Column(
                children: [
                  ProfileScreenContainer(text: 'Visa Details', onTap: (){
                    employeeData!.showVisa=!employeeData!.showVisa;
                    setState(() {
        
                    });
                  }),
                  if(employeeData!.showVisa)
                    Container(
                      decoration:BoxDecoration(
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(5))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Right to work check method',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.visa.rightToWorkCheckMethod,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Visa type Id',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.visa.visaTypeId,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text('Visa type name',style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.visa.visaTypeName,style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,

                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Passport no',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.visa.passportNo,style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Passport expiry',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.visa.passportExpiry,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Passport issue country',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.visa.passportIssueCountry,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text('Home office ref',style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.visa.homeOfficeRef,style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,

                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Share code',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.visa.shareCode,style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Share Expiry',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.visa.shareExpiry,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Check conducted date',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.visa.checkConductedDate,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Immigration status expiry',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.visa.immigrationStatusExpiry,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Ecs ref no',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff)
                                      ),),
                                      Text(employeeData!.visa.ecsRefNo,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Ecs expiry date',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.visa.ecsExpiryDate,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Date issued',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff)
                                      ),),
                                      Text(employeeData!.visa.dateIssued,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('E visa',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.visa.eVisa,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Biometric',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff)
                                      ),),
                                      Text(employeeData!.visa.biometric,style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Biometric expiry',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.visa.biometricExpiry,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff)
                                      ),),
                                      Text('',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ],
              ),
              const SizedBox(height: 10,),
              //bank details
              if(employeeData!=null)
              Column(
                children: [
                  ProfileScreenContainer(text: 'Bank Details', onTap: (){
                    employeeData!.showBankDetails=!employeeData!.showBankDetails;
                    setState(() {
        
                    });
                  }),
                  if(employeeData!.showBankDetails)
                    Container(
                      decoration:BoxDecoration(
                          color: Color(0xff262626),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(5))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(

                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Bank name',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      )   ,
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.bankDetails.bankName,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('Account holder name',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text(employeeData!.bankDetails.accountHolderName,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text('Sort code',style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.bold
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        children: [
                                          Text(employeeData!.bankDetails.sortCode,style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,

                                          ),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Functions.getSVG('assets/images/white_line.svg'),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('Account number',style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Text(employeeData!.bankDetails.accountNumber,style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,

                                    ),)
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text('Other information',style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffffffff),
                                                fontWeight: FontWeight.bold
                                            ),),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Text(employeeData!.bankDetails.otherInformation,style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,

                                            ),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Functions.getSVG('assets/images/white_line.svg'),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text('',style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffffffff),
                                          fontWeight: FontWeight.bold
                                      ),),
                                      Text('',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,

                                      ),)
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),


                        ],
                      ),
                    )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
