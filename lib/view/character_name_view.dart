import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:rickandmorty/view_model/character_view_model.dart';

class CharaterName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CharacterViewModel>(builder: (builder) {
      double wSize = MediaQuery.of(context).size.width;
      return ListView.builder(
        itemCount: builder.characterList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            width: wSize,
            height: 80,
            child: ListTile(
              leading: Image.network("${builder.characterList[index].image}"),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(builder.characterList[index].name.toString()),
                ],
              ),
              trailing: Text(builder.characterList[index].status.toString()),
            ),
          );
        },
      );
    });
  }
}
/*Container(
              margin: EdgeInsets.all(10),
              width: wSize,
              height: 80,
              color: Colors.green,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    builder.characterList[index].name.toString(),
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ));*/
