import 'package:flutter/material.dart';
import 'package:million_live_db/assets/chars.dart';

class IdolScreenProvider extends ChangeNotifier {
  List<String> selectedTypes;
  List<IdolAvatar> idolsListProvider;

  IdolScreenProvider() {
    this.selectedTypes = ['pri', 'fai', 'ang', 'ex'];
    this.idolsListProvider = idolsList;
  }

  void updateList(String type) {
    selectedTypes.indexOf(type) > -1
        ? selectedTypes.remove(type)
        : selectedTypes.add(type);
    idolsListProvider = idolsList
        .where((idol) => selectedTypes.indexOf(idol.type) > -1)
        .toList();
    notifyListeners();
  }
}
