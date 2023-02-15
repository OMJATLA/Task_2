import 'dart:convert';

import 'package:http/http.dart' as http;

class remote_service_1 {
  Future<dynamic> getData_1() async {
    http.Response response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
    if (response.statusCode == 200) {
      String data = response.body;
      // print(data);
      // print(jsonDecode(data));
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
