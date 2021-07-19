import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmorty/view/character_name_view.dart';
import 'package:rickandmorty/view_model/character_view_model.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  CharacterViewModel cvm = Get.put(CharacterViewModel());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //double wSize = MediaQuery.of(context).size.width;
    // double hSize = MediaQuery.of(context).size.height;
    return Scaffold(
      //Todo Appbar Yap
      /* appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: CharaterName(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
