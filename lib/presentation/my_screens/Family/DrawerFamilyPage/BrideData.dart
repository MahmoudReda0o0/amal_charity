import 'package:amal_charity/presentation/my_screens/Widget/CusContainerData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../business_logic/Provider/ApiProvider/FamilyData.dart';

class BrideData extends StatelessWidget {
  const BrideData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderFamilyData>(
      builder: (context,_,child) {
        var _bride = _.family!.bride!;
        return ListView(
          children: [
            CusContainerData(leading: 'التاريخ : ', title: "${_bride.weddingDate}"),
            CusContainerData(leading: 'نوع الجواز 😑 : ', title: '${_bride.brideType}'),
            CusContainerData(leading: 'تلاجه : ', title: '${_bride.brideDevices!.fridge}'),
            CusContainerData(leading: 'بوتجاز : ', title: '${_bride.brideDevices!.cooker}'),
            CusContainerData(leading: 'غشاله : ', title: '${_bride.brideDevices!.washingMachine}'),
            CusContainerData(leading: 'مطبخ : ', title: '${_bride.brideDevices!.kitchen}'),
          ],
        );
      }
    );
  }
}
