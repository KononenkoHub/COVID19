import 'package:covid19_app/models/tab_navigation_item.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          for(final tabItem in TabNavigationItem.items) tabItem.page,
        ],
      ),
    );
  }
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (int value) {
        setState(() {
          _currentIndex = value;
        });
      },
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        for( final tabItem in TabNavigationItem.items)
          BottomNavigationBarItem(icon: tabItem.image, title: tabItem.title)
      ],
    );
}
}


