

import 'dart:convert';

import 'package:flutter_web/material.dart';

class MainDrawer extends StatefulWidget {

  final void Function(int) _onPageButtonTap;
  final title;

  MainDrawer(this._onPageButtonTap, this.title);

  @override
  _MainDrawerState createState() {
    return _MainDrawerState(_onPageButtonTap, title);
  }

}

class _MainDrawerState extends State<MainDrawer> {

  final void Function(int) _onPageButtonTap;
  final String labelFontFamily = 'Google';
  final title;
  var home;
  var tabs;

  _MainDrawerState(this._onPageButtonTap, this.title);

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
          list.add(ListTile(
            title: Text(text, style: TextStyle(fontFamily: labelFontFamily),),
            onTap: () => _onPageButtonTap(pageId),
          ));
        }
      }
    }
    return list;
  }

  @override
  void initState() {
    print("MainDrawer initState");
    getFuture(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: getTabs(),
      ),
    );
  }

}