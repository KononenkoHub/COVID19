import 'package:covid19_app/widgets/custom_behavior.dart';
import 'package:flutter/material.dart';
import 'package:covid19_app/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'symptom_card.dart';

class SymptomCarousel extends StatelessWidget {
  const SymptomCarousel({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: ScrollConfiguration(
        behavior: CustomBehavoir(),
        child: ListView.builder(
            itemCount: symptomsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SymptomCard(
                      url: symptomsList[index].imagrUrl,
                      title: symptomsList[index].title,
                    )),
              );
            }),
      ),
    );
  }
}
