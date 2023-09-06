import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/family_detailed.dart';

class FamilyDataResult {
  FamilyDetailedModel? DataModel;
  bool? hasError;
  String? errorMessage = "";
}

class FamilyDataApi {
  Future<FamilyDataResult> GetFamilyData() async {
    FamilyDataResult dataResult = FamilyDataResult();
    print('get family data API');
    try {
      final uri = Uri.parse(
          'https://alamalcharity.onrender.com/cases/64cdec0b21c066c1eee767a2');
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        dataResult.hasError = false;
        // print('family response api : ${(response.body)}');
        dataResult.DataModel =
            FamilyDetailedModel.fromJson(jsonDecode(response.body[0]));
        print(dataResult.DataModel!.bride);
      } else {
        dataResult.hasError = true;
        dataResult.errorMessage = 'response code api : ${response.statusCode}';
        print('family response : ${response.body}');
      }
      return dataResult;
    } catch (e) {
      dataResult.hasError = true;
      dataResult.errorMessage = 'catch error : $e';
      print('catch error $e');
      return dataResult;
    }
  }
}
