import 'package:amal_charity/State%20Managment/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/State%20Managment/Provider/AppProvider/TextEditingController.dart';
import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../zTEST/test Put.dart';

class AdminAlertDialog extends StatelessWidget {
  const AdminAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<ProviderAppData,ProviderTextEditingController>(
      builder: (context,_,__,child) {
        return AlertDialog(
          title: const Text(
            "Enter Password to Active Admin Mode",
            style: TextStyle(fontSize: 27),
            textAlign: TextAlign.center,
          ),
          content: TextField(
            controller: _.adminPassController,
          ),
          icon: const Icon(
            Icons.admin_panel_settings,
            size: 50,
            color: Colors.yellow,
          ),
          actions: [
            TextButton(
              onPressed: () {
                _.exitAdminMode();
                print('${_.adminMode}');
                Navigator.pop(context);
              },
              child: Container(
                child: const Text(
                  'Exit Mode',
                  style: TextStyle(color: Colors.red,fontSize: 22),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _.activeAdminMode();
               __.setTextController();
                print('${_.adminMode}');
                Navigator.pop(context);
              },
              child: Container(
                child: const Text(
                  'Active Mode',
                  style: TextStyle(color: Colors.green,fontSize: 22),
                ),
              ),
            ),
          ],
        );
      }
    );
    ;
  }
}
