import 'package:flutter_web/material.dart';

import 'package:kirin_web/views/MainAppBar.dart';

import 'views/MainDrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'GDG Taipei'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final String labelFontFamily = 'Google';

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 750) {
        return getWebScreen();
      } else {
        return getAppScreen();
      }
    });
  }

  void _onButtonTap(int pageId) {
    //TODO tap to change page.
    print('_onButtonTap: Change page $pageId');
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
      drawer: MainDrawer(_onButtonTap, title),
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Colors.black54, fontFamily: labelFontFamily),),
//        leading: IconButton(
//          icon: Icon(Icons.menu),
//          onPressed: () {
//            _scaffoldKey.currentState.openDrawer();
//          },
//        ),
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
