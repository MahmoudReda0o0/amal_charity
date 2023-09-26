import 'dart:convert';
import 'dart:developer';

import 'package:amal_charity/data/models/family_detailed.dart';
import 'package:http/http.dart' as http;

class FamiliesWebServices {
  String baseUrl = 'https://alamalcharity.onrender.com/';
  Future<List<dynamic>> getFamilies() async {
    try {
      print('#### get families from web services');
      final response = await http.get(
        Uri.parse('${baseUrl}cases'),
        headers: <String, String>{
          'lang': 'en',
          "Accept": "application/json",
          'Content-type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> families = jsonDecode(response.body);
        return families;
      } else {
        print('#### Error: ${response.body}');
        return [];
      }
    } catch (ex) {
      print('#### error is  ${ex.toString()}');
      return [];
    }
  }

  Future<List<dynamic>> getFamiliesInDetails() async {
    try {
      final response = await http.get(
        Uri.parse('${baseUrl}cases/details'),
        headers: <String, String>{
          'lang': 'en',
          "Accept": "application/json",
          'Content-type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> families = jsonDecode(response.body);
        print("This is the families ${families[0]}");
        return families;
      } else {
        print('#### Error: ${response.body}');
        return [];
      }
    } catch (ex) {
      print('#### error is  ${ex.toString()}');
      return [];
    }
  }

  Future<dynamic> getFamilyById(
    String familyId,
  ) async {
   

    final uri = Uri.parse(
        'https://alamalcharity.onrender.com/cases/64cdec0b21c066c1eee767a2');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      dynamic result = jsonDecode(response.body);
      print(result);
      return result;
    } else {
      print('family response : ${response.body}');
    }
  }

  Future<dynamic> addNewFamily(FamilyDetailedModel familyDetailedModel,) async {
    log('addNewFamily');

    final uri = Uri.parse(
        '${baseUrl}cases/');
    final response = await http.post(uri);
    if (response.statusCode == 200) {
      dynamic result = jsonDecode(response.body);
      log(result);
      return result;
    } else {
      log('family response : ${response.body}');
    }
  }
    Future<dynamic> deleteFamily(String familyId,) async {
    log('deleteFamily');

    final uri = Uri.parse(
        '${baseUrl}cases/$familyId');
    final response = await http.delete(uri);
    if (response.statusCode == 200) {
      dynamic result = jsonDecode(response.body);
      log(result);
      return result;
    } else {
      log('error is  : ${response.body}');
    }
  }
}
