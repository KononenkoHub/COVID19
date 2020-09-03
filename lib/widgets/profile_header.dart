import 'package:covid19_app/data.dart';
import 'package:flutter/material.dart';

import 'profile_name_box.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      height: MediaQuery.of(context).size.height * .3,
      child: Row(
        children: [
          ProfileNameBox(user: user,),
          CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.red[200],
            backgroundImage: NetworkImage(user.imageUrl),
          )
        ],
      ),
    );
  }
}
