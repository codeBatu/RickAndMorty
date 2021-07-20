import 'package:flutter/material.dart';

Widget rickAndMortyCard(image) {
  return AspectRatio(
    aspectRatio: 2 / 1.95,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
        color: Colors.orange,
      ),
    ),
  );
}
