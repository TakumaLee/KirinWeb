
import 'package:flutter_web/material.dart';

import 'HomeHeader.dart';

class HomePageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomeHeader()
      ],
    );
  }

}