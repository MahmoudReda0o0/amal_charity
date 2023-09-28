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
        final List<dynamic> families =
            jsonDecode(utf8.decode(response.bodyBytes));
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
        final List<dynamic> families =
            jsonDecode(utf8.decode(response.bodyBytes));
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
    final uri = Uri.parse('${baseUrl}cases/$familyId');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      dynamic result = jsonDecode(utf8.decode(response.bodyBytes));
      log("We got the data successfully from the web service ${result.toString()}");
      return result;
    } else {
      log('family error is : ${response.body}');
    }
  }

  Future<void> addNewFamily(
    Map<String, dynamic> map,
  ) async {
    log('addNewFamily');

    final uri = Uri.parse('https://alamalcharity.onrender.com/cases/');
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(map),
    );

    if (response.statusCode == 200) {
      if (response.headers['content-type'] ==
          'application/json; charset=utf-8') {
        // It's JSON, so parse it
        dynamic result = jsonDecode(response.body);
        log(result.toString());
      } else {
        // It's not JSON, handle it as a plain string
        log('Response body (as string): ${response.body}');
      }
    } else {
      log('Error response: ${response.body}');
    }
  }

  Future<dynamic> deleteFamily(
    String familyId,
  ) async {
    log('deleteFamily');

    final uri = Uri.parse('${baseUrl}cases/$familyId');
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
