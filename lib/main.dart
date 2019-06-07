import 'package:flutter_web/material.dart';

import 'views/HomeAppBar.dart';

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
}
