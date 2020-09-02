import 'package:flutter/material.dart';

class SymptomCard extends StatelessWidget {
  final String url;
  final String title;

  const SymptomCard({Key key, this.url, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            url,
            height: 100,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
