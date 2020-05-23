import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/provider/IdolDetailScreenProvider.dart';
import 'package:provider/provider.dart';

class IdolDetailTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Rerender idol detail top');
    IdolDetailScreenProvider provider =
        Provider.of<IdolDetailScreenProvider>(context);
    return Container(
      height: 375,
      child: Selector<IdolDetailScreenProvider, String>(
        selector: (_, __) => provider.idolDetail.idolImg,
        builder: (_, idolImg, __) {
          print('Rerender idol image');
          return Container(
            height: 375,
            margin: EdgeInsets.only(top: 56),
            alignment: Alignment.center,
            child: Image.memory(
              base64.decode(idolImg),
            ),
          );
        },
      ),
    );
  }
}
