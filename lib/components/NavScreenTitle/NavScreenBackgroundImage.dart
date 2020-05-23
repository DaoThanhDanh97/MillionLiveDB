import 'package:flutter/material.dart';

class NavScreenBackgroundImage extends StatefulWidget {
  final String image;
  final double appBarHeight;

  const NavScreenBackgroundImage({Key key, this.image, this.appBarHeight})
      : super(key: key);

  @override
  _NavScreenBackgroundImageState createState() =>
      _NavScreenBackgroundImageState();
}

class _NavScreenBackgroundImageState extends State<NavScreenBackgroundImage> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 20,
      child: Image.asset(
        widget.image,
        height: 100,
      ),
    );
  }
}
