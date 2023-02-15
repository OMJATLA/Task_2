import 'dart:convert';

import 'package:http/http.dart' as http;

class remote_service_2 {
  Future<dynamic> getData_2() async {
    http.Response response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
