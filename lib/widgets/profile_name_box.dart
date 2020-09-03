import 'package:covid19_app/data.dart';
import 'package:covid19_app/models/user.dart';
import 'package:flutter/material.dart';

class ProfileNameBox extends StatelessWidget {
  final User user;

  const ProfileNameBox({Key key, this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                user.firstName + ' ' + user.secondName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              Text(
                user.country + ',' + user.city,
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.black54),
              )
            ],
          ),
        ),
      ),
    );
  }
}
