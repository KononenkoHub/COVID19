import 'package:covid19_app/models/advice_block.dart';
import 'package:flutter/material.dart';
import 'custom_behavior.dart';

class AdviceList extends StatelessWidget {
  final List<AdviceBlock> advicesList;

  const AdviceList({Key key, this.advicesList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ScrollConfiguration(
            behavior: CustomBehavoir(),
            child: ListView.builder(
                itemCount: advicesList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Container(
                        height: 120,
                        child: index % 2 == 0
                            ? Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: advicesList[index].blockColor,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 10.0),
                                        child: Text(
                                          advicesList[index].text,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Image.asset(
                                      advicesList[index].imageUrl,
                                      height: 100,
                                    ),
                                  ),
                                ],
                              )
                            : Stack(
                                children: [
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: advicesList[index].blockColor,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.65,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 10.0),
                                        child: Text(
                                          advicesList[index].text,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Image.asset(
                                      advicesList[index].imageUrl,
                                      height: 100,
                                    ),
                                  ),
                                ],
                              )),
                  );
                })),
      ),
    );
  }
}
