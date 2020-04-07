import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: BorderRadius.circular(50.0)),
        child: Column(
          children: <Widget>[
            _ShoeWithShadow(),
            _ShoeSizes()
          ],
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: _ShadowShoe(),
            bottom: 20,
            right: 0,
          ),
          Image(
            image: AssetImage('assets/img/azul.png'),
          ),
        ],
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(color: Color(0xffEAA14E), blurRadius: 40.0)
          ]
        ),
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _SizeBox(7),
          _SizeBox(7.5),
          _SizeBox(8),
          _SizeBox(8.5),
          _SizeBox(9),
          _SizeBox(9.5),
        ],
      ),
    );
  }
}

class _SizeBox extends StatelessWidget {
  final double size;

  const _SizeBox(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('${size.toString().replaceAll('.0', '')}', style: TextStyle(
        color: (this.size == 9) ? Colors.white : Color(0xffFFCF53),
        fontSize: 16.0,
        fontWeight: FontWeight.bold
      )),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: (this.size == 9) ? Color(0xffF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          if (this.size == 9)
          BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0, 5))
        ]
      ),
    );
  }
}