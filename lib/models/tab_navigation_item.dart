import 'package:covid19_app/screens/home_screen.dart';
import 'package:covid19_app/screens/profile.dart';
import 'package:covid19_app/screens/state_screen.dart';
import 'package:covid19_app/screens/virus_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem(
      {@required this.page, @required this.title, @required this.icon});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomeScreen(),
          title: SizedBox.shrink(),
          icon:Icon(Icons.do_not_disturb)
        ),
        TabNavigationItem(
          page: VirusInfoScreen(),
          title: SizedBox.shrink(),
          icon: Icon(Icons.info_outline)
        ),
        TabNavigationItem(
          page: StatsScreen(),
          title: SizedBox.shrink(),
          icon: Icon(Icons.data_usage)
        ),
        TabNavigationItem(
          page: ProfileScreen(),
          title: SizedBox.shrink(),
          icon: Icon(Icons.person_outline)
        ),
      ];
}
