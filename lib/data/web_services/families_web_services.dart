import 'dart:convert';

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
}
