import 'package:flutter/material.dart';
import 'package:million_live_db/model/HexColor.dart';
import 'package:provider/provider.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/provider/IdolDetailScreenProvider.dart';

class IdolBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IdolDetailScreenProvider provider =
        Provider.of<IdolDetailScreenProvider>(context);
    return Positioned(
      top: 16,
      left: 16,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Selector<IdolDetailScreenProvider, HexColor>(
          selector: (_, __) => provider.idolDetail.imgColor,
          builder: (_, imgColor, __) {
            return Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: imgColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.navigate_before,
                color: Colors.white,
                size: 24,
              ),
            );
          },
        ),
      ),
    );
  }
}
