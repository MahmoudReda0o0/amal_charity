import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';


class ProviderAppData extends ChangeNotifier{
  String familyAppBar ='بيانات الأسرة';
  var pagedata ;
  int drawerIndex=0;
  String name= 'محمود رضا';
  int age =22;
  String address= 'المنصوره/الدراسات/امام معرض شباب التحرير/خلف النجمه الذهبيه';


  postData(String updatedData){
    name = updatedData ;
    notifyListeners();
  }

  SelectDrawerItem({required int selectedInsex}){
    familyAppBar = PublicData.familyObject[selectedInsex];
    drawerIndex = selectedInsex;
    notifyListeners();
  }
}