
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../State Managment/Provider/AppProvider/ProviderAppData.dart';

class CusListTileNav extends StatelessWidget {
  CusListTileNav({required this.itemIndex,required this.routePage,required this.title,required this.leadingIcon});
  int itemIndex;
  var routePage;
  String title;
  IconData leadingIcon;
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderAppData>(
      builder: (context,_,child) {
        return ListTile(
          onTap: (){
            _.SelectDrawerItem(selectedInsex: itemIndex);
           Navigator.pop(context);
          },
          title: Text('$title'),
          leading:Icon(leadingIcon),
          //trailing: Icon(Icons.account_balance),
        );
      }
    );
  }
}
