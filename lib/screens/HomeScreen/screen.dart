import 'package:flutter/material.dart';
import 'package:million_live_db/components/NavScreenTitle/NavScreenTitle.dart';
import 'package:million_live_db/components/NavScreenTitle/navData.dart';
import 'package:million_live_db/screens/CardScreen/screen.dart';
import 'package:million_live_db/screens/IdolScreen/screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _screens = [
    IdolScreen(),
    CardScreen(),
    Container(),
  ];

  GlobalKey _btmNavigationBar = new GlobalKey();
  final PageController _controller = new PageController(
    keepPage: true,
  );

  int state = 0;

  @override
  Widget build(BuildContext context) {
    double _statusBarHeight = MediaQuery.of(context).padding.top;
    NavData nav = navData[state];
    List<String> titles = navData.map((item) => item.enTitle).toList();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height - 56,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: NavScreenTitle(
                  _statusBarHeight,
                  state,
                  nav.bgImage,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100 + _statusBarHeight),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: PageView(
                controller: _controller,
                children: _screens,
                onPageChanged: (index) {
                  this.setState(() {
                    state = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 56,
        child: BottomNavigationBar(
          key: _btmNavigationBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), title: Text(titles[0])),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), title: Text(titles[1])),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit), title: Text(titles[2])),
          ],
          currentIndex: state,
          onTap: (index) {
            this.setState(() {
              state = index;
            });
            _controller.jumpToPage(
              index,
            );
          },
        ),
      ),
    );
  }
}
