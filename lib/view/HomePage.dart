import 'package:flutter/material.dart';

import 'package:rickandmorty/view/character_name_view.dart';

import 'package:rickandmorty/widget/home_page_card_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage(this.titlem);
  String? titlem;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        title: Text(
          "${widget.titlem}",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 25),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        leading: IconButton(
          icon: Icon(Icons.menu, size: 35, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Rick And Morty FaceBook",
                      style: TextStyle(fontSize: 25, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 180,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              rickAndMortyCard(
                                  "https://static.wikia.nocookie.net/rickandmorty/images/4/41/Morty_Smith.jpg/revision/latest?cb=20200519152019"),
                              rickAndMortyCard(
                                  "https://media.bantmag.com/wp-content/uploads/2021/03/rick-and-morty-header-800x533.jpg"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Kayıt Ol",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Giriş",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: ElevatedButton(
                      child: Text(
                        "Demo Giriş",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => CharaterName()));
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
