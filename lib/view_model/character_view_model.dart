import 'package:get/get.dart';
import 'package:rickandmorty/core/api_service/api_services.dart';
import 'package:rickandmorty/core/models/characters_models.dart';

ApiServices _apiServices = new ApiServices();

class CharacterViewModel extends GetxController {
  CharacterViewModel() {
    getAllCharacter();
  }
  List<Character> characterList = [];

  getAllCharacter() async {
    var result = await _apiServices.getCharacterServices();
    if (result == false) {
      print("Api Call Hata");
    } else {
      for (var singleList in result) {
        characterList.add(Character.fromJson(singleList));
      }
      update();
    }
  }
}
