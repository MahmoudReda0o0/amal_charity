/// @author:         Nader Hany
/// @version:        1.2
/// @date:           27/11/2023
/// @file:           alamal_dart_interface/lib/controllers/apiPosters.controllers.dart
/// @description:    this will all POST requests to the api

import 'package:http/http.dart' as http;
import 'dart:convert';

/// ******************** ApiPosterController ***************
class ApiPosterController {
  // will post a case
  Future<bool> postCase(var caseObject) async {
    try {
      var body = json.encode(caseObject);
      var url = Uri.parse('https://alamalcharity.onrender.com/cases');
      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: body,
      );
      if (response.statusCode == 200) {
        print('ApiPosterController->postCase()::Response: ${response.body}');
        return true;
      } else {
        print('ApiPosterController->postCase()::Error: ${response.statusCode}');
        print('ApiPosterController->postCase()::Response: ${response.body}');
      }
    } catch (e) {
      print('ApiPosterController->postCase():: failed to make request $e');
    }
    return false;
  }

  // will post a Note
  Future<bool> postNote(var noteObject, String caseId) async {
    try {
      var body = json.encode(noteObject);
      var url =
          Uri.parse('https://alamalcharity.onrender.com/cases/notes/$caseId');
      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: body,
      );
      if (response.statusCode == 200) {
        print('ApiPosterController->postNote()::Response: ${response.body}');
        return true;
      } else {
        print('ApiPosterController->postNote()::Error: ${response.statusCode}');
        print('ApiPosterController->postNote():: Response: ${response.body}');
      }
    } catch (e) {
      print('ApiPosterController->postNote():: failed to make request');
    }
    return false;
  }
}
