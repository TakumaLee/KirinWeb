

import 'package:flutter_web/material.dart';

import 'HomeAppBar.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() {

    return _HomePageWidgetState("GDG Taipei");
  }

}

class _HomePageWidgetState extends State<HomePageWidget> {

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

  Widget getWebScreen() {
    return Scaffold(
      appBar: PreferredSize(child: HomeAppBar(title), preferredSize: Size.fromHeight(56)),
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
      appBar: PreferredSize(child: HomeAppBar(title), preferredSize: Size.fromHeight(56)),
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