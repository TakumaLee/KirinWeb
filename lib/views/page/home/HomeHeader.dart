import 'package:flutter_web/material.dart';
import 'package:kirin_web/tutorials/HomeConfig.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Image.asset(
            'images/gdg.header-show.jpg',
            height: 196,
          ),
          padding: EdgeInsets.fromLTRB(256, 96, 48, 96),
        ),
        Expanded(
            child: Align(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 64, 256, 0),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Color.fromARGB(164, 0, 0, 0)
                          ),
                          children: <TextSpan> [
                            TextSpan(text: "Make good things "),
                            TextSpan(text: "together", style: TextStyle(color: Colors.blueAccent))
                          ]
                        ),
                      ),
                      Text("GDG Taipei"),
                      Text("Google Developers Group (GDG) Taipei is a group of people who are interested in Google technology mainly and share information.")
                    ],
          ),
        )))
      ],
    );
  }
}
