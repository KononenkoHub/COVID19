import 'package:flutter/material.dart';

class StatText extends StatelessWidget {
  final String globalText;
  final String subText;
  final int globalNumber;
  final int subNumber;

  const StatText(
      {Key key,
      this.globalText,
      this.subText,
      this.globalNumber,
      this.subNumber})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [BoxShadow(blurRadius: 6.0, offset: Offset(0.0, 1.0))]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  globalText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                Text(
                  '$globalNumber',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subText,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '$subNumber',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
