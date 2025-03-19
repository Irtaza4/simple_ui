class EmployeeData {
  Personal personal;
  List<Address> addresses;
  EmergencyContact emergencyContact;
  KeyInfo keyInfo;
  Visa visa;
  BankDetails bankDetails;
  bool showPersonalInfo;
  bool showAddress;
  bool showEmergencyContact;
  bool showKeyInfo;
  bool showVisa;
  bool showBankDetails;


  EmployeeData({
    required this.personal,
    required this.addresses,
    required this.emergencyContact,
    required this.keyInfo,
    required this.visa,
    required this.bankDetails,
    required this.showPersonalInfo,
    required this.showAddress,
    required this.showBankDetails,
    required this.showEmergencyContact,
    required this.showKeyInfo,
    required this.showVisa,
  });

  factory EmployeeData.fromJson(Map<String, dynamic> json) {
    return EmployeeData(
      personal: Personal.fromJson(json['personal']),
      addresses: (json['addresses'] as List).map((e) => Address.fromJson(e)).toList(),
      emergencyContact: EmergencyContact.fromJson(json['emergency_contact']),
      keyInfo: KeyInfo.fromJson(json['key_info']),
      visa: Visa.fromJson(json['visa']),
      bankDetails: BankDetails.fromJson(json['bank_details']), showPersonalInfo: false, showAddress: false,
      showBankDetails: false,showEmergencyContact: false,showKeyInfo: false,showVisa: false
    );
  }
}

class Personal {
  String title;
  String firstName;
  String middleName;
  String surname;
  String dateOfBirth;
  String gender;
  String maritalStatus;

  Personal({
    required this.title,
    required this.firstName,
    required this.middleName,
    required this.surname,
    required this.dateOfBirth,
    required this.gender,
    required this.maritalStatus,
  });

  factory Personal.fromJson(Map<String, dynamic> json) {
    return Personal(
      title: json['title'],
      firstName: json['first_name'],
      middleName: json['middle_name'] ?? '',
      surname: json['surname'],
      dateOfBirth: json['date_of_birth'],
      gender: json['gender'],
      maritalStatus: json['martial_status'],
    );
  }
}

class Address {
  String id;
  String? previousAddress;
  String? city;
  String? postCode;
  String? fromMonth;
  String? fromYear;
  String? toMonth;
  String? toYear;
  String? fromDate;
  String? toDate;
  String currentAddress;
  String ukAddress;
  String employeeId;

  Address({
    required this.id,
    this.previousAddress,
    this.city,
    this.postCode,
    this.fromMonth,
    this.fromYear,
    this.toMonth,
    this.toYear,
    this.fromDate,
    this.toDate,
    required this.currentAddress,
    required this.ukAddress,
    required this.employeeId,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id']??"",
      previousAddress: json['previous_address']??"",
      city: json['city']??"",
      postCode: json['post_code']??"",
      fromMonth: json['from_month']??"",
      fromYear: json['from_year']??"",
      toMonth: json['to_month']??"",
      toYear: json['to_year']??"",
      fromDate: json['from_date']??"",
      toDate: json['to_date']??"",
      currentAddress: json['current_address']??"",
      ukAddress: json['uk_address']??"",
      employeeId: json['employee_id']??"",
    );
  }
}

class EmergencyContact {
  String ukAddress;
  String fullName;
  String relationship;
  String email;
  String postcode;
  String address;
  String city;
  String telNo;
  String mobile;
  String workPhone;
  String reference;

  EmergencyContact({
    required this.ukAddress,
    required this.fullName,
    required this.relationship,
    required this.email,
    required this.postcode,
    required this.address,
    required this.city,
    required this.telNo,
    required this.mobile,
    required this.workPhone,
    required this.reference,
  });

  factory EmergencyContact.fromJson(Map<String, dynamic> json) {
    return EmergencyContact(
      ukAddress: json['uk_address']??"",
      fullName: json['full_name']??"",
      relationship: json['relationship']??"",
      email: json['email']??"",
      postcode: json['postcode'] ?? ''??"",
      address: json['address']??"",
      city: json['city']??"",
      telNo: json['tel_no']??"",
      mobile: json['mobile']??"",
      workPhone: json['work_phone']??"",
      reference: json['reference'] ?? '',
    );
  }
}

class KeyInfo {
  String employmentType;
  String niNumber;
  String nationality;
  String countryOfBirth;
  String placeOfBirth;

  KeyInfo({
    required this.employmentType,
    required this.niNumber,
    required this.nationality,
    required this.countryOfBirth,
    required this.placeOfBirth,
  });

  factory KeyInfo.fromJson(Map<String, dynamic> json) {
    return KeyInfo(
      employmentType: json['employment_type']??"",
      niNumber: json['ni_number']??"",
      nationality: json['nationality']??"",
      countryOfBirth: json['country_of_birth']??"",
      placeOfBirth: json['place_of_birth']??"",
    );
  }
}

class Visa {
  String rightToWorkCheckMethod;
  String visaTypeId;
  String visaTypeName;
  String passportNo;
  String passportExpiry;
  String passportIssueCountry;
  String homeOfficeRef;
  String shareCode;
  String shareExpiry;
  String checkConductedDate;
  String immigrationStatusExpiry;
  String ecsRefNo;
  String ecsExpiryDate;
  String dateIssued;
  String eVisa;
  String biometric;
  String biometricExpiry;

  Visa({
    required this.rightToWorkCheckMethod,
    required this.visaTypeId,
    required this.visaTypeName,
    required this.passportNo,
    required this.passportExpiry,
    required this.passportIssueCountry,
    required this.homeOfficeRef,
    required this.shareCode,
    required this.shareExpiry,
    required this.checkConductedDate,
    required this.immigrationStatusExpiry,
    required this.ecsRefNo,
    required this.ecsExpiryDate,
    required this.dateIssued,
    required this.eVisa,
    required this.biometric,
    required this.biometricExpiry,
  });

  factory Visa.fromJson(Map<String, dynamic> json) {
    return Visa(
      rightToWorkCheckMethod: json['right_to_work_check_method'] ?? '',
      visaTypeId: json['visa_type_id'] ?? '',
      visaTypeName: json['visa_type_name'] ?? '',
      passportNo: json['passport_no'] ?? '',
      passportExpiry: json['passport_expiry'] ?? '',
      passportIssueCountry: json['passport_issue_country'] ?? '',
      homeOfficeRef: json['home_office_ref'] ?? '',
      shareCode: json['share_code'] ?? '',
      shareExpiry: json['share_expiry'] ?? '',
      checkConductedDate: json['check_conducted_date'] ?? '',
      immigrationStatusExpiry: json['immigration_status_expiry'] ?? '',
      ecsRefNo: json['ecs_ref_no'] ?? '',
      ecsExpiryDate: json['ecs_expiry_date'] ?? '',
      dateIssued: json['date_issued'] ?? '',
      eVisa: json['e_visa'] ?? '',
      biometric: json['biometric'] ?? '',
      biometricExpiry: json['biometric_expiry'] ?? '',
    );
  }

}

class BankDetails {
  String bankName;
  String accountHolderName;
  String sortCode;
  String accountNumber;
  String  otherInformation;

  BankDetails({
    required this.bankName,
    required this.accountHolderName,
    required this.sortCode,
    required this.accountNumber,
    required  this.otherInformation
  });

  factory BankDetails.fromJson(Map<String, dynamic> json) {
    return BankDetails(
      bankName: json['bank_name'],
      accountHolderName: json['account_holder_name'],
      sortCode: json['sort_code'],
      accountNumber: json['account_number'],
      otherInformation: json['other_information']
    );
  }
}
