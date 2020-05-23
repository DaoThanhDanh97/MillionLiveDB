import 'package:flutter/material.dart';
import 'package:million_live_db/model/HexColor.dart';
import 'package:million_live_db/screens/IdolScreen/screen.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/components/IdolBackButton.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/components/IdolDetailBottom.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/components/IdolDetailTop.dart';

class LeftColumn extends StatelessWidget {
  final Widget child;
  final HexColor color;

  LeftColumn({
    @required this.child,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: color.withOpacity(0.85),
      alignment: Alignment.center,
      child: child,
    );
  }
}

class RightColumn extends StatelessWidget {
  final Widget child;

  RightColumn({
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}

class IdolsDetailScreen extends StatelessWidget {
  static String routeName = '/idolDetail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IdolDetailTop(),
                      IdolDetailBottom(),
                    ],
                  ),
                ),
              ),
            ),
            IdolBackButton(),
          ],
        ),
      ),
    );
  }
}
