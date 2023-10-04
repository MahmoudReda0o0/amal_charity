
import 'package:amal_charity/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/AppProvider/ProviderAppData.dart';
import '../../../../State Managment/Provider/AppProvider/TextEditingController.dart';

class CusUpdateDataDialog extends StatefulWidget {
  CusUpdateDataDialog({required this.Data});

  TextEditingController Data;

  @override
  State<CusUpdateDataDialog> createState() => _CusUpdateDataDialogState();
}

class _CusUpdateDataDialogState extends State<CusUpdateDataDialog> {
  TextEditingController conData = TextEditingController();

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    conData = widget.Data;
    return Consumer2<ProviderAppData,ProviderTextEditingController>(
      builder: (context,_,__,child) {
        return AlertDialog(
          content: TextField(
            controller: __.conName,
            onTap: () {
              print('text field on tap');
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.pink),
              ),
            ),
            TextButton(
              onPressed: () {
                print('new conData :=> ${conData.text}');
                Navigator.pop(context);
              },
              child: Text(
                'Update',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      }
    );
  }
}
