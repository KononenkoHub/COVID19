import 'package:covid19_app/data.dart';
import 'package:covid19_app/widgets/advice_list.dart';
import 'package:flutter/material.dart';

class VirusInfoScreen extends StatefulWidget {
  @override
  _VirusInfoScreenState createState() => _VirusInfoScreenState();
}

class _VirusInfoScreenState extends State<VirusInfoScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What to do when ill?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris a risus nisl. Aenean elementum efficitur nisl sit amet scelerisque. Cras congue, nibh in maximus imperdiet, neque nibh sollicitudin massa, a faucibus arcu nunc nec orci. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black54),
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 10.0,
                  children: [
                    for(final image in prohibition)
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Image.asset(
                            image),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                AdviceList(
                  advicesList: listWithAdvices,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
