import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  var baseUrl = "https://rickandmortyapi.com/api/";

  getCharacterServices() async {
    var url = Uri.parse(baseUrl + "character");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return json.decode(response.body)["results"];
    } else {}
  }
}
