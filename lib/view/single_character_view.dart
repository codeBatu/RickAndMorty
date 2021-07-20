import 'package:flutter/material.dart';

class SingleCharacterView extends StatefulWidget {
  SingleCharacterView({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.image,
  });

  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  String? image;
  @override
  _SingleCharacterViewState createState() => _SingleCharacterViewState();
}

class _SingleCharacterViewState extends State<SingleCharacterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name}"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("${widget.image}"), fit: BoxFit.cover),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.3, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(.7)
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "Name :",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                    Text(
                      " ${widget.name}",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      "Gender :",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                    Text(
                      "${widget.gender}",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      "Species  :",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                    Text(
                      "${widget.species}",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      "Status :",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                    Text(
                      "${widget.status}",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      "Type :",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                    Text(
                      "${widget.type}",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Text(
                      "ID :",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                    Text(
                      "${widget.id}",
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white70,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white70,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white70,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
/* mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${widget.name}",
                        style: TextStyle(fontSize: 25, color: Colors.white70),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "${widget.name}",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white70),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),*/
