import 'package:flutter/material.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/components/IdolInformation.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/components/IdolName.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/model/IdolDetail.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/provider/IdolDetailScreenProvider.dart';
import 'package:provider/provider.dart';

class IdolDetailBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IdolDetail idolDetail =
        Provider.of<IdolDetailScreenProvider>(context).idolDetail;
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4),
            color: idolDetail.imgColor.withOpacity(0.25),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            IdolName(
              enName: idolDetail.enName,
              jpName: idolDetail.jpName,
              type: idolDetail.type,
              color: idolDetail.imgColor,
            ),
            IdolInformation(),
          ],
        ),
      ),
    );
  }
}
