import 'package:amal_charity/State%20Managment/Provider/ApiProvider/FamilyData.dart';
import 'package:amal_charity/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Data/models/family_detailed.dart';

// "Husband": {
// "name": "str",
// "age": 100,
// "enableWork": true,
// "job": "str",
// "education": "str",
// "teleNumber": "str"

class ProviderTextEditingController extends ChangeNotifier {

  TextEditingController conName = TextEditingController();
  TextEditingController conAge = TextEditingController();
  TextEditingController conEnableWork = TextEditingController();
  TextEditingController conJob = TextEditingController();
  TextEditingController conEducation = TextEditingController();
  TextEditingController conTeleNumber = TextEditingController();

  void setTextController() {
    final familyData = Provider.of<ProviderFamilyData>(navigationKey.currentContext!,listen: false).family;
    print('ProviderTextController : ${familyData!.husband!.name}');
    print('${familyData!.husband!.name!}');
    conName.text = '${familyData!.husband!.name}';
    conAge.text = '${familyData!.husband!.age}';
    conEnableWork.text = '${familyData!.husband!.enableWork}';
    conJob.text = '${familyData!.husband!.job}';
    conEducation.text = '${familyData!.husband!.education}';
    conTeleNumber.text = '${familyData!.husband!.teleNumber}';
  }

  void dispose() {
    super.dispose();
    conName.dispose();
    conAge.dispose();
    conEnableWork.dispose();
    conJob.dispose();
    conEducation.dispose();
    conTeleNumber.dispose();
  }
}
