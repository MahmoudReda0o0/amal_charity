
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../../Widget/CusContainerData.dart';


class ParentsData extends StatelessWidget {
  const ParentsData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderFamilyData>(
      builder: (context,_,child) {
        var _husband = _.family!.husband!;
        var _wife =_.family!.wife!;
        return ListView(
          children: [
            Container(
              color: Colors.white10,
              child: Column(
                children: [
                  CusContainerData(
                      leading: 'الزوج : ', title: _husband.name!),
                  CusContainerData(
                      leading: 'العمر : ', title: '${_husband.age}'),
                  CusContainerData(
                      leading: 'قادر للعمل : ', title: ' ${_husband.enableWork} '),
                  CusContainerData(
                      leading: 'الوظيفه : ', title: '${_husband.job}'),
                  CusContainerData(
                      leading: 'مؤهل التعليم : ', title: ' ${_husband.education} '),
                  CusContainerData(
                      leading: 'الهاتف : ', title: '${_husband.teleNumber}'),
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
                      leading: 'الزوجه : ', title: '${_wife.name}'),
                  CusContainerData(
                      leading: 'العمر : ', title: '${_wife.age}'),
                  CusContainerData(
                      leading: ' قادره للزواج : ', title: '${_wife.enableMarry}'),
                  CusContainerData(
                      leading: 'قادره للعمل : ', title: ' ${_wife.enableWork} '),
                  CusContainerData(
                      leading: 'الوظيفه : ', title: '${_wife.job} '),
                  CusContainerData(
                      leading: 'مؤهل التعليم : ', title: ' ${_wife.job} '),
                  CusContainerData(
                      leading: 'الهاتف : ', title: '${_wife.teleNumber}'),
                ],
              ),
            ),
          ],
        );
      }
    );
  }
}
