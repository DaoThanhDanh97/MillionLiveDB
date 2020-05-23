import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:million_live_db/model/HexColor.dart';
import 'package:million_live_db/screens/IdolScreen/data/selectionData.dart';
import 'package:tuple/tuple.dart';

class IdolName extends StatelessWidget {
  final String enName;
  final String jpName;
  final String type;
  final HexColor color;

  IdolName({
    @required this.enName,
    @required this.jpName,
    @required this.type,
    @required this.color,
  });

  String getTypeImage(String type) {
    switch (type) {
      case 'pri':
        return 'assets/types/princess.png';
      case 'fai':
        return 'assets/types/fairy.png';
      case 'ang':
        return 'assets/types/angel.png';
      case 'ex':
        return 'assets/types/ex.png';
      default:
        return '';
    }
  }

  Tuple2<String, Color> getType(String type) {
    SelectionData selection =
        selections.firstWhere((element) => element.type == type);
    return new Tuple2<String, Color>(selection.name, selection.color);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: <Widget>[
          Image.asset(
            getTypeImage(type),
            height: 30,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                enName,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              Text(
                jpName,
                style: GoogleFonts.mPlusRounded1c(
                  color: color,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
