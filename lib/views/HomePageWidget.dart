

import 'package:flutter_web/material.dart';

import 'HomeAppBar.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() {

    return _HomePageWidgetState("GDG Taipei");
  }

}

class _HomePageWidgetState extends State<HomePageWidget> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final String title;
  final String labelFontFamily = 'Google';

  _HomePageWidgetState(this.title);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 750) {
        return getWebScreen();
      } else {
        return getAppScreen();
      }
    });
  }

  void _onButtonTap(int pageId) {
    setState(() {
      //TODO tap to change page.
      print('_onButtonTap: Change page $pageId');
    });
  }

  Widget getWebScreen() {
    return Scaffold(
      appBar: PreferredSize(child: HomeAppBar(_onButtonTap, title), preferredSize: Size.fromHeight(56)),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              "Hello GDG World.",
              style: TextStyle(fontFamily: labelFontFamily),
            ),
          ),
          Center(
            child: Text(
              "Hello GDG World.",
              style: TextStyle(fontFamily: labelFontFamily),
            ),
          ),
          Center(
            child: Text(
              "Hello GDG World.",
              style: TextStyle(fontFamily: labelFontFamily),
            ),
          ),
        ],
      ),
    );
  }

  Widget getAppScreen() {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Center(
              child: Text(
                "Hello GDG World.",
                style: TextStyle(fontFamily: labelFontFamily),
              ),
            ),
            Center(
              child: Text(
                "Hello GDG World.",
                style: TextStyle(fontFamily: labelFontFamily),
              ),
            ),
            Center(
              child: Text(
                "Hello GDG World.",
                style: TextStyle(fontFamily: labelFontFamily),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.black54, fontFamily: labelFontFamily),),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              "Hello GDG App Mode.",
              style: TextStyle(fontFamily: labelFontFamily),
            ),
          ),
          Center(
            child: Text(
              "Hello GDG App Mode.",
              style: TextStyle(fontFamily: labelFontFamily),
            ),
          ),
          Center(
            child: Text(
              "Hello GDG App Mode.",
              style: TextStyle(fontFamily: labelFontFamily),
            ),
          ),
        ],
      ),
    );
  }
}