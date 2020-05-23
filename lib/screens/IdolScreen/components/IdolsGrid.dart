import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:million_live_db/assets/chars.dart';
import 'package:million_live_db/components/IdolComponent/IdolComponent.dart';
import 'package:million_live_db/screens/IdolScreen/function/functions.dart';

class IdolsGrid extends StatelessWidget {
  final List<IdolAvatar> idolsList;

  IdolsGrid(this.idolsList);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      // itemCount: idolsList.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 80.0,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 1,
      ),
      delegate: SliverChildListDelegate(
        idolsList
            .map(
              (idol) => IdolComponent(
                idol: idol,
                onPress: () {
                  fetchData(idol.id, idol.type, context);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
