import 'package:flutter/material.dart';

class PrecautionsBackCard extends StatelessWidget {
  final String title;
  final String text;

  const PrecautionsBackCard({Key key, this.title, this.text}) : super(key: key);
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          )
        ],
      ),
    );
  }
}
