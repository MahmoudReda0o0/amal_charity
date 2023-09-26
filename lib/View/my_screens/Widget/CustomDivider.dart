import 'package:flutter/material.dart';

class CustomDevider {
  Widget mineiDivider() {
    return const Divider(
      color: Colors.black38,
      height: 30,
      thickness: 2,
      endIndent: 50,
      indent: 50,
    );
  }

  Widget fullDivider() {
    return const Divider(
      color: Colors.black,
      height: 30,
      thickness: 3,
      endIndent: 10,
      indent: 10,
    );
  }
}
