import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  var baseUrl = "https://rickandmortyapi.com/api/";

  getCharacterServices() async {
    var url = Uri.parse(baseUrl + "character");

    var response = await http.get(url);
    var allUser = json.decode(response.body)["results"];

    return allUser;
  }
/*
  getCharacterImagesServices() async {
    for (var i = 1; i < 11; i++) {
      var url =
          Uri.parse(baseUrl + "character/avatar/" + i.toString() + ".jpeg");

      var response = await http.get(url);
      var allImages = json.decode(response.body)["images"];
      return allImages;
    }
  }*/
}
