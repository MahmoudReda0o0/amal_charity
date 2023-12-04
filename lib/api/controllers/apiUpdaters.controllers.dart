/// @author:         Nader Hany
/// @version:        1.2
/// @date:           29/11/2023
/// @file:           alamal_dart_interface/lib/controllers/apiPosters.controllers.dart
/// @description:    this will handel all PUT requests from the api

import 'package:http/http.dart' as http;
import 'dart:convert';

/// ******************** ApiUpdaterController ***************
class ApiUpdaterController {
  Future<bool> updateCase(String id, var updatedCase) async {
    try {
      var url = Uri.parse('https://alamalcharity.onrender.com/cases/$id');
      var response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(updatedCase),
      );

      if (response.statusCode == 200) {
        print(
            'ApiUpdaterController->updateCase()::Response data: ${response.body}');
        return true;
      } else {
        print(
            'ApiUpdaterController->updateCase():: failed with status: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('ApiUpdaterController->updateCase():: failed to make request');
    }
    return false;
  }

  Future<bool> updateCaseNote(String id, String noteId, var updatedNote) async {
    try {
      var url = Uri.parse('https://alamalcharity.onrender.com/cases/$id');
      var response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(updatedNote),
      );

      if (response.statusCode == 200) {
        print(
            'ApiUpdaterController->updateCaseNote()::Response data: ${response.body}');
        return true;
      } else {
        print(
            'ApiUpdaterController->updateCaseNote():: failed with status: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('ApiUpdaterController->updateCaseNote():: failed to make request');
    }
    return false;
  }
}
