import 'package:flutter/material.dart';
import 'package:shoes/src/widgets/orange_button.dart';

class AddShoeCart extends StatelessWidget {
  final double mount;

  AddShoeCart({this.mount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100.0)
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 20.0,),
            Text('\$$mount', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
            Spacer(),
            OrangeButton(text: 'Add to cart'),
            SizedBox(width: 20.0)
          ],
        ),
      ),
    );
  }
}