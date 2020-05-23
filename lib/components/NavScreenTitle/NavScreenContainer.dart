import 'package:flutter/material.dart';
import 'package:million_live_db/components/NavScreenTitle/navData.dart';

class NavScreenContainer extends StatefulWidget {
  final double _appBarHeight;
  final int _index;

  NavScreenContainer(this._appBarHeight, this._index);

  @override
  _NavScreenContainerState createState() => _NavScreenContainerState();
}

class _NavScreenContainerState extends State<NavScreenContainer> {
  Color _bgColor = Color(navData[0].bgColor);

  @override
  void didUpdateWidget(NavScreenContainer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget._index != widget._index) {
      this.setState(() {
        _bgColor = Color(navData[widget._index].bgColor);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 300),
      height: 120 + widget._appBarHeight,
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: 28,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              _bgColor.withOpacity(1),
              _bgColor.withOpacity(0.3),
            ])
          ..createShader(
            Rect.fromLTRB(0, 0, MediaQuery.of(context).size.width, 120),
          ),
      ),
      child: Text(
        navData[widget._index].enTitle,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
