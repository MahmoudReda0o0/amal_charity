import 'package:amal_charity/constants/constantValues.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/FamilyProfile.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/ParentsData.dart';
import 'package:flutter/material.dart';


class ProviderAppData extends ChangeNotifier{
  String familyAppBar ='بيانات الأسرة';
  var pagedata ;
  int drawerIndex=0;
  SelectDrawerItem({required int selectedInsex}){
    // switch (selectedInsex){
    //   case 0 :
    //     familyAppBar=' بيانات الأسرة ';
    //     pagedata = FamilyProfile();
    //     notifyListeners();
    //     break;
    //   case 1 :
    //     familyAppBar=' بيانات الوالدين ';
    //     pagedata = ParentsData();
    //     notifyListeners();
    //     break;
    //   case 2 :
    //     familyAppBar=' بيانات الابناء ';
    //     notifyListeners();
    //     break;
    //   case 4 :
    //     familyAppBar=' بيانات المنزل ';
    //     notifyListeners();
    //     break;
    //   case 5 :
    //     familyAppBar=' بيانات الدخل والخرج ';
    //     notifyListeners();
    //     break;
    //   case 6 :
    //     familyAppBar=' بيانات العلاج ';
    //     notifyListeners();
    //     break;
    //   case 7 :
    //     familyAppBar=' بيانات المدارس ';
    //     notifyListeners();
    //     break;
    // };
    familyAppBar = PublicData.familyObject[selectedInsex];
    drawerIndex = selectedInsex;
    notifyListeners();

  }
}