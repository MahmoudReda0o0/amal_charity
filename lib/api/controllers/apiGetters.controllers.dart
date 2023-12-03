/// @author:         Nader Hany
/// @version:        1.2
/// @date:           29/11/2023
/// @file:           alamal_dart_interface/lib/controllers/apiPosters.controllers.dart
/// @description:    this will handel all GET requests from the api

import 'package:http/http.dart' as http;
import 'dart:convert';

/// ******************** ApiGetterController ***************
class ApiGetterController {
  Future<List<Map<String, dynamic>>> getCasesShortList() async {
    try {
      var url = Uri.parse('https://alamalcharity.onrender.com/cases');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List<Map<String, dynamic>> shortList = [];
        // print('Decoded data: $data');
        for (var element in data) {
          shortList.add(element);
        }
        return shortList;
      } else {
        print(
            'ApiGetterController->getCasesShortList():: ${response.statusCode}');
      }
    } catch (e) {
      print(
          'ApiGetterController->getCasesShortList():: failed to make request');
    }
    return [];
  }

  Future<List<Map<String, dynamic>>> getCasesByLocation(String location) async {
    try {
      var url = Uri.parse(
          'https://alamalcharity.onrender.com/cases/location/$location');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List<Map<String, dynamic>> locationList = [];
        // print('Decoded data: $data');
        for (var element in data) {
          locationList.add(element);
        }
        return locationList;
      } else {
        print(
            'ApiGetterController->getCasesByLocation():: ${response.statusCode}');
      }
    } catch (e) {
      print(
          'ApiGetterController->getCasesByLocation():: failed to make request');
    }
    return [];
  }

  Future<Map<String, dynamic>> getFullCasesByID(String id) async {
    try {
      var url = Uri.parse('https://alamalcharity.onrender.com/cases/$id');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        Map<String, dynamic> FullCase = {};
        // print('Decoded data: $data');
        for (var element in data) {
          FullCase = element;
        }
        return FullCase;
      } else {
        print(
            'ApiGetterController->getFullCasesByID():: ${response.statusCode}');
      }
    } catch (e) {
      print('ApiGetterController->getFullCasesByID():: failed to make request');
    }
    return {};
  }

  Future<List<Map<String, dynamic>>> getCaseNotes(String id) async {
    try {
      var url = Uri.parse('https://alamalcharity.onrender.com/cases/notes/$id');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List<Map<String, dynamic>> notesList = [];
        // print('Decoded data: $data');
        for (var element in data) {
          notesList.add(element);
        }
        return notesList;
      } else {
        print('ApiGetterController->getCaseNotes():: ${response.statusCode}');
      }
    } catch (e) {
      print('ApiGetterController->getCaseNotes():: failed to make request');
    }
    return [];
  }

  Future<List<Map<String, dynamic>>> getCaseNotesByFilter(
      String id, String filter) async {
    try {
      var url = Uri.parse(
          'https://alamalcharity.onrender.com/cases/notes/filter/$id');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        List<Map<String, dynamic>> notesList = [];
        // print('Decoded data: $data');
        for (var element in data) {
          notesList.add(element);
        }
        return notesList;
      } else {
        print(
            'ApiGetterController->getCaseNotesByFilter():: ${response.statusCode}');
      }
    } catch (e) {
      print(
          'ApiGetterController->getCaseNotesByFilter():: failed to make request');
    }
    return [];
  }
}
