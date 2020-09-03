import 'package:flutter/cupertino.dart';

class User {
  String firstName;
  String secondName;
  String imageUrl;
  bool isInfected;
  String country;
  String city;
  User({@required this.firstName, @required this.secondName, this.imageUrl, this.isInfected, this.country, this.city});
}
