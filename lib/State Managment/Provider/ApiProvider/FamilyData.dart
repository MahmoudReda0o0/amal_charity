import 'package:amal_charity/data/models/family_detailed.dart';
import 'package:amal_charity/data/ApiRequest/Get/FamilyDataApi.dart';
import 'package:flutter/material.dart';

class ProviderFamilyData extends ChangeNotifier {
  FamilyDataResult dataResult = FamilyDataResult();
  FamilyDataApi dataApi = FamilyDataApi();
  FamilyDetailedModel? family;
  GetFamilyData() async {
    dataResult = await dataApi.GetFamilyData();
    if (dataResult.hasError == false) {
      print('provider data done');
      //print('name api: ${dataResult.DataModel!.husband!.name}');
    } else {
      print('provider data fail');
    }
  }
}
