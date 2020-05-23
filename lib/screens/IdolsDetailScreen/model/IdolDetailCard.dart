import 'package:flutter/material.dart';

class IdolDetailCard {
  final String base64Img;
  final String enName;
  final String jpName;
  final String id;
  final int type;

  IdolDetailCard({
    @required this.base64Img,
    @required this.enName,
    @required this.jpName,
    @required this.id,
    @required this.type,
  });

  factory IdolDetailCard.fromJSON(Map<String, dynamic> json) {
    return IdolDetailCard(
      base64Img: json['base64Img'],
      enName: json['enName'],
      jpName: json['jpName'],
      id: json['id'],
      type: json['type'],
    );
  }
}