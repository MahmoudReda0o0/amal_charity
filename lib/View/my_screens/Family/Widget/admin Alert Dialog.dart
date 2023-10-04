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
          title:  Text(
            "Enter Password to Active Admin Mode",
            style: TextStyle(fontSize: mediaW*0.07),
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
                Navigator.pop(context);
                _.exitAdminMode();
                print('${_.adminMode}');
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
                Navigator.pop(context);
                _.activeAdminMode();
               __.setTextController();
                print('${_.adminMode}');

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
