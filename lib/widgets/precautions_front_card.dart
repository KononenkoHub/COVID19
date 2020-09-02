import 'package:flutter/material.dart';

class PrecautionsFrontCard extends StatelessWidget {
  final String imageUrl;
  const PrecautionsFrontCard({Key key, this.imageUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width * 0.4;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [BoxShadow(offset: Offset(0.0, 2.0), blurRadius: 6.0)]),
      child: Center(
        child: Image.asset(
          imageUrl,
          height: size * .6,
        ),
      ),
    );
  }
}