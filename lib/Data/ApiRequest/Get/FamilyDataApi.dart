import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../models/families_model.dart';
import '../../models/family_detailed.dart';

class FamilyDataResult {
  List<FamilyDetailedModel>? DataModel;
  bool? hasError;
  String? errorMessage = "";
}

class FamilyDataApi {
  Future<FamilyDataResult> GetFamilyData() async {
    FamilyDataResult dataResult = FamilyDataResult();
    print('get family data API');
    try {
      final uri = Uri.parse(
          'https://alamalcharity.onrender.com/cases');
      final response = await http.get(uri,
        headers: <String, String>{
          'lang': 'en',
          "Accept": "application/json",
          'Content-type': 'application/json',
        },);
      if (response.statusCode == 200) {
        dataResult.DataModel  =jsonDecode(utf8.decode(response.bodyBytes));
        final aa = dataResult.DataModel!.map((family) => FamilyModel.fromJson(family as Map<String, dynamic>)).toList();
        dataResult.hasError = false;
        // print('family response api : ${(response.body)}');
        print('data model : ${dataResult.DataModel![1].husband!.name}');

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
