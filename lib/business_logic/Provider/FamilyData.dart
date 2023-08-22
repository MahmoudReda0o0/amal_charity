import 'package:amal_charity/data/web_services/FamilyDataApi.dart';
import 'package:flutter/material.dart';

class ProviderFamilyData extends ChangeNotifier{
  FamilyDataResult dataResult = FamilyDataResult();
  FamilyDataApi dataApi = FamilyDataApi();

  GetFamilyData ()async{
    dataResult = await dataApi.GetFamilyData();
    if(dataResult.hasError==false){
      print('provider data done');
      print('name api: ${dataResult.DataModel!.husband!.name}');
    }
    else{
      print('provider data fail');
    }
  }
}