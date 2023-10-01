import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';

class CusCenterTitle extends StatelessWidget {
  CusCenterTitle(this.title);
  String title;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(title,style: TextStyle(color: Colors.green,fontSize: mediaW*0.08),),);
  }
}
