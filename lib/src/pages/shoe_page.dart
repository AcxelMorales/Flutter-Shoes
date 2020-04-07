import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/custom_appbar.dart';
import 'package:shoes/src/widgets/shoe_button_car.dart';
import 'package:shoes/src/widgets/shoe_desc.dart';
import 'package:shoes/src/widgets/shoe_size.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(text: 'For you'),
          SizedBox(height: 20.0),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ShoeSizePreview(),
                  ShoeDesc(
                      title: 'Nike Air Max 720',
                      desc:
                          "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                ],
              ),
            ),
          ),
          AddShoeCart(mount: 180.0)
        ],
      ),
    );
  }
}
