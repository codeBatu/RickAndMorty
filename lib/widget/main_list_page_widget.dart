import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rickandmorty/view_model/character_view_model.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CharacterViewModel>(builder: (builder) {
      //  double wSize = MediaQuery.of(context).size.width;
      return ListView.builder(
        itemCount: builder.characterList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Card(
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Image.network(
                    "${builder.characterList[index].image}",
                    height: 50,
                  ),
                  title: Row(
                    children: [
                      Text(builder.characterList[index].name.toString()),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_right),
                  subtitle: Text(
                    builder.characterList[index].status.toString(),
                  ),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
