

import 'dart:convert';

import 'package:flutter_web/material.dart';

import 'TabButton.dart';

class HomeAppBar extends StatefulWidget {

  final void Function(int) _onPageButtonTap;
  final title;

  HomeAppBar(this._onPageButtonTap, this.title);

  @override
  _HomeAppBarWidgetState createState() {
    return _HomeAppBarWidgetState(_onPageButtonTap, title);
  }

}

class _HomeAppBarWidgetState extends State<HomeAppBar> {

  final void Function(int) _onPageButtonTap;
  final String labelFontFamily = 'Google';
  final title;
  var home;
  var tabs;

  _HomeAppBarWidgetState(this._onPageButtonTap, this.title);

  getFuture(BuildContext context) async {
    var data = await DefaultAssetBundle.of(context).loadString('core/home.json');
    setState(() {
      home = json.decode(data);
      print('$home');
    });
  }

  List<Widget> getTabs() {
    List<Widget> list = List();
    if (home != null) {
      tabs = home["tabs"];
      if (tabs != null) {
        for (int i = 0; i < tabs.length; i++) {
          String text = tabs[i]['text'];
          int pageId = tabs[i]['pageId'];
          list.add(TabButton(_onPageButtonTap, title: text, pageId: pageId));
        }
      }
    }
    return list;
  }

  @override
  void initState() {
    getFuture(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
            leading: Container(
              child: Image.asset("images/logo-GDG.png"),
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
            ),
            title: Text(title, style: TextStyle(color: Colors.black54, fontFamily: labelFontFamily, fontStyle: FontStyle.normal)),
            backgroundColor: Color.fromARGB(1, 255, 255, 255),
            actions: getTabs(),
    );
  }

}