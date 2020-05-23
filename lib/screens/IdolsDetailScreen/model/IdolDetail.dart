import 'package:flutter/foundation.dart';
import 'package:million_live_db/model/HexColor.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/model/IdolDetailCard.dart';

class IdolDetail {
  final String enName;
  final String jpName;
  final String type;
  final int age;
  final int height;
  final int weight;
  final String bDay;
  final String bloodType;
  final String bwh;
  final List<String> enFavorite;
  final List<String> jpFavorite;
  final List<String> enHobby;
  final List<String> jpHobby;
  final List<String> enSkill;
  final List<String> jpSkill;
  final String enHometown;
  final String jpHometown;
  final String enSeiyuu;
  final String jpSeiyuu;
  final String enHoroscope;
  final String jpHoroscope;
  final HexColor imgColor;
  final String idolImg;
  final List<IdolDetailCard> cards;

  IdolDetail({
    @required this.enName,
    @required this.jpName,
    @required this.type,
    @required this.age,
    @required this.height,
    @required this.weight,
    @required this.bDay,
    @required this.bloodType,
    @required this.bwh,
    @required this.enFavorite,
    @required this.jpFavorite,
    @required this.enHobby,
    @required this.jpHobby,
    @required this.enSkill,
    @required this.jpSkill,
    @required this.enHometown,
    @required this.jpHometown,
    @required this.enSeiyuu,
    @required this.jpSeiyuu,
    @required this.enHoroscope,
    @required this.jpHoroscope,
    @required this.imgColor,
    @required this.idolImg,
    @required this.cards,
  });

  factory IdolDetail.fromJSON(Map<String, dynamic> json, String type) {
    return IdolDetail(
      enName: json['enName'],
      jpName: json['jpName'],
      type: type,
      age: json['age'],
      height: json['height'],
      weight: json['weight'],
      bDay: json['bDay'],
      bloodType: json['bloodType'],
      bwh: json['bwh'],
      enFavorite: List.from(json['enFavorite']),
      jpFavorite: List.from(json['jpFavorite']),
      enHobby: List.from(json['enHobby']),
      jpHobby: List.from(json['jpHobby']),
      enSkill: List.from(json['enSkill']),
      jpSkill: List.from(json['jpSkill']),
      enHometown: json['enHometown'],
      jpHometown: json['jpHometown'],
      enSeiyuu: json['enSeiyuu'],
      jpSeiyuu: json['jpSeiyuu'],
      enHoroscope: json['enHoroscope'],
      jpHoroscope: json['jpHoroscope'],
      imgColor: new HexColor(json['imgColor']),
      idolImg: json['idolImg'],
      cards: List.from(json['cards'])
          .map((item) => IdolDetailCard.fromJSON(Map.from(item)))
          .toList(),
    );
  }
}
