import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:rickandmorty/view_model/character_view_model.dart';

class CharaterName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CharacterViewModel>(builder: (builder) {
      //  double wSize = MediaQuery.of(context).size.width;
      return ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                child: ListTile(
                  leading:
                      Image.network("${builder.characterList[index].image}"),
                  title: Row(
                    children: [
                      Text(builder.characterList[index].name.toString()),
                    ],
                  ),
                  trailing:
                      Text(builder.characterList[index].status.toString()),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
