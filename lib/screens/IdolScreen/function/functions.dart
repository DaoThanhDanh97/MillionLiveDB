import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/provider/IdolDetailScreenProvider.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/screen.dart';
import 'package:provider/provider.dart';

void showFetchInfoWidget(Widget widget, BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) {
      return widget;
    },
    // barrierDismissible: false,
  );
}

void fetchData(String id, String type, BuildContext context) {
  showFetchInfoWidget(
    Center(
      child: Container(
        width: 40,
        height: 40,
        child: CircularProgressIndicator(),
      ),
    ),
    context,
  );
  Firestore.instance.collection('idol_info').document(id).get().then((data) {
    Navigator.pop(context);
    if (data.data == null) {
      showFetchInfoWidget(
        CupertinoAlertDialog(
          title: Text('Warning'),
          content: Text('No data found!'),
          actions: <Widget>[
            CupertinoDialogAction(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
        context,
      );
    } else {
      Provider.of<IdolDetailScreenProvider>(context, listen: false)
          .fetchIdolDetail(data.data, type);
      Navigator.of(context).pushNamed(IdolsDetailScreen.routeName);
    }
  }).catchError((error) {
    print(error);
    Navigator.pop(context);
    showFetchInfoWidget(
      CupertinoAlertDialog(
        title: Text('Warning'),
        content: Text('Fetch data failed!'),
        actions: <Widget>[
          CupertinoDialogAction(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
      context,
    );
  });
}