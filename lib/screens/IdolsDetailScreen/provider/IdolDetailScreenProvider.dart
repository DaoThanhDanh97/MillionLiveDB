import 'package:flutter/material.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/model/IdolDetail.dart';

class IdolDetailScreenProvider extends ChangeNotifier {
  IdolDetail _idolDetail;

  IdolDetailScreenProvider();

  IdolDetail get idolDetail {
    return this._idolDetail;
  }

  void fetchIdolDetail(Map<String, dynamic> json, String type) {
    _idolDetail = IdolDetail.fromJSON(json, type);
    notifyListeners();
  }
}