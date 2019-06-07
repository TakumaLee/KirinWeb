

import 'dart:convert';

import 'package:flutter_web/material.dart';

import 'TabButton.dart';

class HomeAppBar extends StatefulWidget {

  final title;

  HomeAppBar(this.title);

  @override
  _HomeAppBarWidgetState createState() {
    return _HomeAppBarWidgetState(title);
  }

}

class _HomeAppBarWidgetState extends State<HomeAppBar> {

  final String labelFontFamily = 'Google';
  final title;
  var home;
  var tabs;

  _HomeAppBarWidgetState(this.title);

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
          list.add(TabButton(title: text,));
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