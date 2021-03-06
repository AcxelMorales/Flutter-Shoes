import 'package:flutter/material.dart';
import 'package:shoes/src/pages/shoe_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes',
      debugShowCheckedModeBanner: false,
      home: ShoePage()
    );
  }
}
