import 'package:flutter/material.dart';

class IdolComponent extends StatelessWidget {
  final dynamic idol;
  final void Function() onPress;

  IdolComponent({
    @required this.idol,
    @required this.onPress,
  });

  Color getColor(String type) {
    switch (type) {
      case 'pri':
        return Color.fromRGBO(255, 89, 163, 1);
      case 'fai':
        return Color.fromRGBO(20, 105, 255, 1);
      case 'ang':
        return Color.fromRGBO(254, 191, 15, 1);
      default:
        return Color.fromRGBO(59, 207, 76, 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: this.getColor(idol.type),
            width: 3.0,
          ),
        ),
        child: Image.asset(
          idol.imgAsset,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
