/// @author:         Nader Hany
/// @version:        1.2
/// @date:           29/11/2023
/// @file:           alamal_dart_interface/lib/controllers/apiPosters.controllers.dart
/// @description:    this will handel all DELETE requests from the api

import 'package:http/http.dart' as http;

/// ******************** ApiUpdaterController ***************
class ApiDeleterController {
  /// will delete one case using its id
  Future<bool> deleteCase(String id) async {
    try {
      var url = Uri.parse('https://alamalcharity.onrender.com/cases/$id');
      var response = await http.delete(
        url,
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        print(
            'ApiDeleterController->deleteCase()::Response data: ${response.body}');
        return true;
      } else {
        print(
            'ApiDeleterController->deleteCase():: failed with status: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('ApiDeleterController->deleteCase():: failed to make request');
    }
    return false;
  }

  /// will delete all cases in the database
  Future<bool> deleteAllCases() async {
    try {
      var url = Uri.parse('https://alamalcharity.onrender.com/cases');
      var response = await http.delete(url);

      if (response.statusCode == 200) {
        print(
            'ApiUpdaterController->deleteAllCases()::Response data: ${response.body}');
        return true;
      } else {
        print(
            'ApiUpdaterController->deleteAllCases():: failed with status: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('ApiUpdaterController->deleteAllCases():: failed to make request');
    }
    return false;
  }

  /// will delete one note in a case using its note id and case id
  Future<bool> deleteCaseNote(String caseID, String noteID) async {
    try {
      var url = Uri.parse(
          'https://alamalcharity.onrender.com/cases/notes/$caseID/$noteID');
      var response = await http.delete(
        url,
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        print(
            'ApiDeleterController->deleteCaseNote()::Response data: ${response.body}');
        return true;
      } else {
        print(
            'ApiDeleterController->deleteCaseNote():: failed with status: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('ApiDeleterController->deleteCaseNote():: failed to make request');
    }
    return false;
  }

  // will delete all notes for such a case
  Future<bool> deleteAllCaseNotes(String caseID) async {
    try {
      var url =
          Uri.parse('https://alamalcharity.onrender.com/cases/notes/$caseID');
      var response = await http.delete(
        url,
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        print(
            'ApiDeleterController->deleteAllCaseNotes()::Response data: ${response.body}');
        return true;
      } else {
        print(
            'ApiDeleterController->deleteAllCaseNotes():: failed with status: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print(
          'ApiDeleterController->deleteAllCaseNotes():: failed to make request');
    }
    return false;
  }
}
