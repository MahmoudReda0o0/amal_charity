import 'package:amal_charity/State%20Managment/Provider/AppProvider/TextEditingController.dart';
import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../Widget/CusCenterTitle.dart';
import '../Widget/CusContainerData.dart';
import '../Widget/CusUpdateButton.dart';

class ParentsData extends StatelessWidget {
  const ParentsData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<ProviderFamilyData, ProviderTextEditingController>(
        builder: (context, _, __, child) {
      var _husband = _.family!.husband!;
      var _wife = _.family!.wife!;
      return ListView(
        children: [
          Container(
            color: Colors.white10,
            child: Column(
              children: [
                CusCenterTitle('الزوج'),
                CusContainerData(
                    leading: 'الاسم : ',
                    title: _husband.name!,
                    adminTextController: __.conName),
                CusContainerData(
                    leading: 'العمر : ',
                    title: '${_husband.age}',
                    adminTextController: __.conAge),
                CusContainerData(
                    leading: 'قادر للعمل : ',
                    title: ' ${_husband.enableWork} ',
                    adminTextController: __.conEnableWork),
                CusContainerData(
                    leading: 'الوظيفه : ',
                    title: '${_husband.job}',
                    adminTextController: __.conJob),
                CusContainerData(
                    leading: 'مؤهل التعليم : ',
                    title: ' ${_husband.education} ',
                    adminTextController: __.conEducation),
                CusContainerData(
                    leading: 'الهاتف : ',
                    title: '${_husband.teleNumber}',
                    adminTextController: __.conTeleNumber),
                CusUpdateButton(),
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
                CusCenterTitle('الزوجة'),
                CusContainerData(leading: 'الزوجه : ', title: '${_wife.name}'),
                CusContainerData(leading: 'العمر : ', title: '${_wife.age}'),
                CusContainerData(
                    leading: ' قادره للزواج : ', title: '${_wife.enableMarry}'),
                CusContainerData(
                    leading: 'قادره للعمل : ', title: ' ${_wife.enableWork} '),
                CusContainerData(leading: 'الوظيفه : ', title: '${_wife.job} '),
                CusContainerData(
                    leading: 'مؤهل التعليم : ', title: ' ${_wife.job} '),
                CusContainerData(
                    leading: 'الهاتف : ', title: '${_wife.teleNumber}'),
                CusUpdateButton(),
              ],
            ),
          ),
        ],
      );
    });
  }
}
