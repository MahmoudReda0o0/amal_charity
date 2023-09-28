import 'package:amal_charity/State%20Managment/Provider/ApiProvider/update%20Family%20Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestPutUpdateData extends StatelessWidget {
  const TestPutUpdateData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderUpdateFamilyDate>(
      builder: (context,_,child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async{
                  await _.UpdateFamilyData();
                },
                child: Text('Update User Date'),
              ),
            ],
          ),
        );
      }
    );
  }
}
