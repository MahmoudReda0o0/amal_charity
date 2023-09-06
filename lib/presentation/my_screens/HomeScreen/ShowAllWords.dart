import 'package:amal_charity/constants/constantValues.dart';
import 'package:amal_charity/constants/my_colors.dart';
import 'package:flutter/material.dart';

class ShowAllWords extends StatelessWidget {
  const ShowAllWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double paddValue = 10;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: List.generate(
          PublicData.wiseWords.length,
          (index) => Container(
            margin: EdgeInsets.only(
                left: paddValue, right: paddValue, top: paddValue),
            height: 180,
            //width: 200,
            color: PublicColor().one,
            child: Center(child: Text('{ ${PublicData.wiseWords[index]} }',style: TextStyle(fontSize: 23,color: Colors.green),textAlign: TextAlign.center)),
          ),
        ),
      ),
    );
  }
}
