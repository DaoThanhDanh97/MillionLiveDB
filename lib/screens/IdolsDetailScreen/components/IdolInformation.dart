import 'package:flutter/material.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/model/IdolDetail.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/provider/IdolDetailScreenProvider.dart';
import 'package:provider/provider.dart';

class IdolInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IdolDetail idolDetail =
        Provider.of<IdolDetailScreenProvider>(context).idolDetail;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: idolDetail.imgColor,
        ),
      ),
      child: ExpansionTile(
        title: Text(
          'Idol Information',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        initiallyExpanded: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Age: ${idolDetail.age}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
