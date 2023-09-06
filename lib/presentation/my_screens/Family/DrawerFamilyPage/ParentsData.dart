import 'package:amal_charity/business_logic/Provider/AppProvider/ProviderAppData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Widget/CusContainerData.dart';


class ParentsData extends StatelessWidget {
  const ParentsData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderAppData>(
      builder: (context,_,child) {
        return ListView(
          children: [
            Container(
              color: Colors.white10,
              child: Column(
                children: [
                  CusContainerData(
                      leading: 'الزوج : ', title: _.testData),
                  CusContainerData(
                      leading: 'العمر : ', title: '53'),
                  CusContainerData(
                      leading: 'قادر للعمل : ', title: ' نعم '),
                  CusContainerData(
                      leading: 'الوظيفه : ', title: 'ورشه نجاره '),
                  CusContainerData(
                      leading: 'مؤهل التعليم : ', title: ' دبلوم '),
                  CusContainerData(
                      leading: 'الهاتف : ', title: '01023654789'),
                ],
              ),
            ),
            Divider(
              color: Colors.black38,
              height: 50,
              thickness: 1.5,
            ),
            Container(
              color: Colors.white10,
              child: Column(
                children: [
                  CusContainerData(
                      leading: 'الزوجه : ', title: 'رافت محمد'),
                  CusContainerData(
                      leading: 'العمر : ', title: '48'),
                  CusContainerData(
                      leading: ' قادره للزواج : ', title: 'لا'),
                  CusContainerData(
                      leading: 'قادره للعمل : ', title: ' لا '),
                  CusContainerData(
                      leading: 'الوظيفه : ', title: 'ربه منزل '),
                  CusContainerData(
                      leading: 'مؤهل التعليم : ', title: ' دبلوم '),
                  CusContainerData(
                      leading: 'الهاتف : ', title: '01023654789'),
                ],
              ),
            ),
          ],
        );
      }
    );
  }
}
