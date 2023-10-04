import 'package:amal_charity/State%20Managment/Provider/ApiProvider/update%20Family%20Data.dart';
import 'package:amal_charity/State%20Managment/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CusUpdateButton extends StatelessWidget {
  const CusUpdateButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<ProviderAppData,ProviderUpdateFamilyDate>(
      builder: (context,_,__,child) {
        return Visibility(
          visible: _.editData,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: () {},
              child: Container(
                height: mediaH * 0.08,
                width: mediaW * 0.9,
                child: Align(
                  alignment: Alignment.center,
                  child: Text('تحديث البيانات',style: TextStyle(color: Colors.black,fontSize: mediaW*0.06),),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
