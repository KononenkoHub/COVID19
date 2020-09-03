import 'dart:async';
import 'dart:convert';
import 'package:covid19_app/models/api_response_stat.dart';
import 'package:covid19_app/widgets/custom_behavior.dart';
import 'package:covid19_app/widgets/single_stat_text.dart';
import 'package:covid19_app/widgets/stat_text.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  Future<APIResponseStat> apiResponse;

  Future<APIResponseStat> fetchData() async {
    const String API_URL = "https://corona.lmao.ninja/v2/all";
    final response = await http.get(Uri.parse(API_URL));
    if (response.statusCode == 200) {
      return APIResponseStat.fromJson(json.decode(response.body));
    } else
      throw Exception('Failed to load');
  }

  @override
  void initState() {
    apiResponse = fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<APIResponseStat>(
            future: apiResponse,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20.0),
                  child: ScrollConfiguration(
                    behavior: CustomBehavoir(),
                    child: ListView(
                      children: [
                        SizedBox(height: 40.0),
                        StatText(
                          globalText: 'Death today',
                          subText: 'All deaths',
                          globalNumber: snapshot.data.todayDeaths,
                          subNumber: snapshot.data.deaths,
                        ),
                        StatText(
                          globalText: 'Recovered',
                          subText: 'Recovered today',
                          globalNumber: snapshot.data.recovered,
                          subNumber: snapshot.data.todayRecovered,
                        ),
                        StatText(
                          globalText: 'Active situation',
                          subText: 'Critical situation',
                          globalNumber: snapshot.data.active,
                          subNumber: snapshot.data.critical,
                        ),
                        SingleStatText(
                          text: 'All tests',
                          number: snapshot.data.tests,
                        ),
                        SingleStatText(
                          text: 'Affected countries',
                          number: snapshot.data.affectedCountries,
                        ),
                        Image.asset('assets/images/map.png')
                      ],
                    ),
                  ),
                );
              } else
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),
                );
            }),
      ),
    );
  }
}


