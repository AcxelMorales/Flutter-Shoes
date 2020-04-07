import 'package:flutter/material.dart';

class ShoeDesc extends StatelessWidget {
  final String title;
  final String desc;

  ShoeDesc({@required this.title, @required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(this.title,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
            SizedBox(height: 20.0),
            Text(this.desc,
                style: TextStyle(color: Colors.black54, height: 1.6))
          ],
        ),
      ),
    );
  }
}
