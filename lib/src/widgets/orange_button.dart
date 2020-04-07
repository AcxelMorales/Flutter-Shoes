import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;

  OrangeButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(100.0)
      ),
      child: Text('$text', style: TextStyle(
        color: Colors.white
      )),
    );
  }
}