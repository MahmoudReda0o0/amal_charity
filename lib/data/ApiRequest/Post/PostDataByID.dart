import 'package:http/http.dart'as http;

class ApiPostDataByID {

  Future updateData() async {
    final uri = Uri.parse('https://alamalcharity.onrender.com/cases/64cdec0b21c066c1eee767a2');
    try{
      final response = await http.put(uri,headers: {
        "Content-Type" : "application/json",
      },
      );
      if(response.statusCode == 200){
        print('Update Data Done');
        print('response body : ${response.body}');
      }
      else{
        print('Update Date Fail');
        print('response body : ${response.body}');
      }
    }catch(e){
      print('Catch Update Data Error : $e');
    }
  }
}