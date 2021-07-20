import 'package:flutter/material.dart';

Widget rickAndMortyCard(image) {
  return AspectRatio(
    aspectRatio: 2.2 / 2,
    child: Container(
      margin: EdgeInsets.only(left: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(150),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
        color: Colors.orange,
      ),
    ),
  );
}
