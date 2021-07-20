import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:rickandmorty/view/single_character_view.dart';
import 'package:rickandmorty/view_model/character_view_model.dart';
import 'package:get/get.dart';

class ListCharacterPage extends StatefulWidget {
  @override
  _ListCharacterPageState createState() => _ListCharacterPageState();
}

class _ListCharacterPageState extends State<ListCharacterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Character List"),
      ),
      body: Container(
        child: GetBuilder<CharacterViewModel>(
          builder: (builder) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: builder.characterList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          height: 200 - 24 - 16 - 7,
                          width: 200,
                          child: Image.network(
                            "${builder.characterList[index].image}",
                          ),
                        ),
                        Text(
                          "${builder.characterList[index].name!.substring(0, 5).toString()}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingleCharacterView(
                            id: builder.characterList[index].id,
                            name: builder.characterList[index].name.toString(),
                            status: builder.characterList[index].status,
                            gender: builder.characterList[index].gender,
                            image: builder.characterList[index].image,
                            species: builder.characterList[index].species,
                            type: builder.characterList[index].type,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
