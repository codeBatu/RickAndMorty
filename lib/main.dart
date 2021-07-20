import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmorty/view/HomePage.dart';

import 'package:rickandmorty/view_model/character_view_model.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  CharacterViewModel cvm = Get.put(CharacterViewModel());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage("Login Screen"),
    );
  }
}
