import 'package:covid19_app/widgets/custom_behavior.dart';
import 'package:covid19_app/widgets/precautions_grid.dart';
import 'package:covid19_app/widgets/symptom_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(
                  height: 20.0,
                ),
                PrecautionsGrid()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
