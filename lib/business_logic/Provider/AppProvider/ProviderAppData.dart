import 'package:amal_charity/constants/constantValues.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/FamilyProfile.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/ParentsData.dart';
import 'package:flutter/material.dart';


class ProviderAppData extends ChangeNotifier{
  String familyAppBar ='بيانات الأسرة';
  var pagedata ;
  int drawerIndex=0;
  String testData= 'محمود رضا';


  postData(String updatedData){
    testData = updatedData ;
    notifyListeners();
  }

  SelectDrawerItem({required int selectedInsex}){
    familyAppBar = PublicData.familyObject[selectedInsex];
    drawerIndex = selectedInsex;
    notifyListeners();
  }
}