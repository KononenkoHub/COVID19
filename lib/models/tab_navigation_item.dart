import 'package:covid19_app/screens/home_screen.dart';
import 'package:covid19_app/screens/virus_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Image image;

  TabNavigationItem(
      {@required this.page, @required this.title, @required this.image});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomeScreen(),
          title: SizedBox.shrink(),
          image: Image.asset(
            'assets/images/info_icon.png',
            height: 30.0,
          ),
        ),
        TabNavigationItem(
          page: VirusInfoScreen(),
          title: SizedBox.shrink(),
          image: Image.asset(
            'assets/images/virus_icon.png',
            height: 30.0,
          ),
        ),
        TabNavigationItem(
          page: HomeScreen(),
          title: SizedBox.shrink(),
          image: Image.asset(
            'assets/images/stats_icon.png',
            height: 30.0,
          ),
        ),
        TabNavigationItem(
          page: HomeScreen(),
          title: SizedBox.shrink(),
          image: Image.asset(
            'assets/images/stats_icon.png',
            height: 30.0,
          ),
        ),
      ];
}
