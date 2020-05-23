import 'package:flutter/material.dart';
import 'package:million_live_db/components/NavScreenTitle/NavScreenBackgroundImage.dart';
import 'package:million_live_db/components/NavScreenTitle/NavScreenContainer.dart';

class NavScreenTitle extends StatelessWidget {
  // final String _title;
  final double _appBarHeight;
  final int _index;
  final String _background;

  NavScreenTitle(this._appBarHeight, this._index, this._background);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        NavScreenBackgroundImage(
          image: _background,
          appBarHeight: _appBarHeight,
        ),
        NavScreenContainer(
          _appBarHeight,
          _index,
        ),
      ],
    );
  }
}
