// To parse this JSON data, do
//
//     final character = characterFromJson(jsonString);

import 'dart:convert';

Character characterFromJson(String str) => Character.fromJson(json.decode(str));

String characterToJson(Character data) => json.encode(data.toJson());

class Character {
  Character({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
  });

  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        status: json["status"] == null ? null : json["status"],
        species: json["species"] == null ? null : json["species"],
        type: json["type"] == null ? null : json["type"],
        gender: json["gender"] == null ? null : json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "status": status == null ? null : status,
        "species": species == null ? null : species,
        "type": type == null ? null : type,
        "gender": gender == null ? null : gender,
      };
}
