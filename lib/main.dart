import 'package:flutter/material.dart';
import 'package:million_live_db/screens/HomeScreen/screen.dart';
import 'package:million_live_db/screens/IdolScreen/provider/IdolScreenProvider.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/provider/IdolDetailScreenProvider.dart';
import 'package:million_live_db/screens/IdolsDetailScreen/screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider(create: (_) => new IdolScreenProvider()),
        ChangeNotifierProvider(create: (_) => new IdolScreenProvider()),
        ChangeNotifierProvider(create: (_) => new IdolDetailScreenProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => HomeScreen(),
          IdolsDetailScreen.routeName: (context) => IdolsDetailScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
