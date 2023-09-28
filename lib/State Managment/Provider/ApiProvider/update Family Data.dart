import 'package:amal_charity/Data/ApiRequest/Put/UpdateFamilyData.dart';
import 'package:flutter/material.dart';

class ProviderUpdateFamilyDate extends ChangeNotifier{
  ApiPutResult apiPutResult = ApiPutResult();
  bool? dataUpdated;

  Future UpdateFamilyData () async {
    apiPutResult = await ApiPutByID.UpdateFamilyData();
    if(apiPutResult.isDone=true) {
      print('provider done update Date');
      dataUpdated=true;
      notifyListeners();
    }else{
      print('provider fail update Date');
      dataUpdated=false;
      notifyListeners();
    }
  }
}