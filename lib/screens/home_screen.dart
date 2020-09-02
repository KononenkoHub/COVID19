import 'package:covid19_app/widgets/custom_behavior.dart';
import 'package:covid19_app/widgets/precautions_grid.dart';
import 'package:covid19_app/widgets/symptom_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        currentIndex: _currentTab,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/info_icon.png',
                height: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/virus_icon.png',
                height: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/stats_icon.png',
                height: 30.0,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: ScrollConfiguration(
            behavior: CustomBehavoir(),
            child: ListView(
              children: <Widget>[
                Text(
                  'Symptoms',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50.0,
                ),
                SymptomCarousel(),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Precautions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0,),
                PrecautionsGrid()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
