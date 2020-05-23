import 'package:flutter/material.dart';

class SelectionData {
  final String type;
  final String name;
  final Color color;

  SelectionData(this.type, this.name, this.color);
}

List<SelectionData> selections = [
  SelectionData('pri', 'Princess', Color.fromRGBO(255, 89, 163, 1)),
  SelectionData('fai', 'Fairy', Color.fromRGBO(20, 105, 255, 1)),
  SelectionData('ang', 'Angel', Color.fromRGBO(254, 191, 15, 1)),
  SelectionData('ex', 'EX', Color.fromRGBO(59, 207, 76, 1)),
];
