import 'dart:convert';
import 'dart:io';
import 'package:amal_charity/State%20Managment/Provider/AppProvider/TextEditingController.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import '../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../../../main.dart';

class ApiPutResult{
  bool? isDone;
  //bool isCatchError=false;
  String? message;
}

class ApiPutByID {
  static Future<ApiPutResult> UpdateFamilyData () async {
    final textController = Provider.of<ProviderTextEditingController>(navigationKey.currentContext!,listen: false);
    ApiPutResult apiPutResult = ApiPutResult();
    Uri uri = Uri.parse('https://alamalcharity.onrender.com/cases/64cdeb6f21c066c1eee7658c');

    try{
      final response = await http.put(uri,body: jsonEncode({
          "Husband": {
            "name": "${textController!.conName.text}",
            "age": 5,
            "enableWork": true,
            "job": "مطور تطبيقات فلاتر",
            "education": "جامعي",
            "teleNumber": "01021804143"},
      }),headers: {HttpHeaders.contentTypeHeader: 'application/json'},);

      if(response.statusCode == 200){
        apiPutResult.isDone=true;
        apiPutResult.message = 'Api Put Done ';
        print('response body : ${response.body}');
      }else{
        apiPutResult.isDone=false;
        apiPutResult.message='Api Put Fail';
        print('response Code: ${response.statusCode} & body: ${response.body}');
      }
      return apiPutResult;
    }catch(e){
      //apiPutResult.isCatchError=true;
      apiPutResult.message= 'Catch Error :$e';
      print('catch error :$e');
      throw Exception('Catch Error : $e');
      //return apiPutResult;
    }
  }
}