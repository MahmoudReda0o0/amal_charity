import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {super.key,
      required this.navPage,
      required this.title,
      required this.leadingIcon});
  var navPage;
  String title;
  IconData leadingIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navPage));
      },
      title: Text(title),
      leading: Icon(leadingIcon),
      //trailing: Icon(Icons.account_balance),
    );
  }
}
