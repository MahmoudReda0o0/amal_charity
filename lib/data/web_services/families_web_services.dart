import 'package:http/http.dart' as http;

class FamiliesWebServices {
  Future<List<dynamic>> getFamilies() async {
    try {
      print('#### get families from web services');
      final response = await http.get(
        Uri.parse('https://alamalcharity.onrender.com/cases'),
        headers: <String, String>{
          'lang': 'en',
          "Accept": "application/json",
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> families = response.body.isNotEmpty
            ? response.body as List<dynamic>
            : []; // You might need to parse the response body depending on your API's behavior
        print('#### the families are $families');
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
