import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/family_detailed.dart';

class FamilyDataResult {
  FamilyDetailedModel? familyDetailedModel;
  bool? hasError;
  String? errorMessage;
}

class FamilyDataApi {
  Future<FamilyDataResult> getFamilyById({required String familyId}) async {
    FamilyDataResult dataResult = FamilyDataResult();
    print('get family data API');

    final uri = Uri.parse('https://alamalcharity.onrender.com/cases/$familyId');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      dataResult.hasError = false;
      print('success get one family : ${response.body}');
      dataResult.familyDetailedModel =
          FamilyDetailedModel.fromJson(jsonDecode(response.body));
      return dataResult;
    } else {
      dataResult.hasError = true;
      print('fail to get one family  : ${response.body}');
      dataResult.errorMessage = 'response code api : ${response.body}';
      return Future.error("${dataResult.errorMessage}");
    }
  }
}
