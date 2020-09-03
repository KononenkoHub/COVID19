import 'package:flutter/material.dart';

class SingleStatText extends StatelessWidget {
  final String text;
  final int number;
  const SingleStatText({
    Key key,
    this.text,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [BoxShadow(offset: Offset(0.0, 1.0), blurRadius: 6.0)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              '$number',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}