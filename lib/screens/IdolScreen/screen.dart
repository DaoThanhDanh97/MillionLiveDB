import 'package:flutter/material.dart';
import 'package:million_live_db/assets/chars.dart';
import 'package:million_live_db/screens/IdolScreen/components/IdolsGrid.dart';
import 'package:million_live_db/screens/IdolScreen/components/IdolsSelection.dart';
import 'package:million_live_db/screens/IdolScreen/provider/IdolScreenProvider.dart';
import 'package:provider/provider.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class IdolScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<IdolScreenProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: CustomScrollView(
          slivers: <Widget>[
            Selector<IdolScreenProvider, List<String>>(
              selector: (_, __) => provider.selectedTypes,
              builder: (_, types, __) => IdolsSelection(
                types,
                (type) {
                  provider.updateList(type);
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 20,
              ),
            ),
            Selector<IdolScreenProvider, List<IdolAvatar>>(
              selector: (_, __) => provider.idolsListProvider,
              builder: (_, idolsList, __) => IdolsGrid(idolsList),
            ),
          ],
        ),
      ),
    );
  }
}
