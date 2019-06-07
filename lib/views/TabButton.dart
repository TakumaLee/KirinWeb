import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

class TabButton extends StatelessWidget {
  final String title;
  final String labelFontFamily = 'Google';

  TabButton({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: InkWell(
          onTap: () {

          },
          child: Container(
              width: 72,
              padding: EdgeInsets.all(4.0),
              child: Center(
                  child: Text(title,
                    style: TextStyle(
                        color: Colors.black54, fontFamily: labelFontFamily))),
          )),
    );
  }
}
