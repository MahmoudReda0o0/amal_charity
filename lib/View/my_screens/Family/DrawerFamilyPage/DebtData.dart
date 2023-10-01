
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../../../../constants/my_colors.dart';
import '../Widget/CusContainerData.dart';
import '../../Widget/CustomDivider.dart';

class DebtData extends StatelessWidget {
  const DebtData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderFamilyData>(builder: (context, _, child) {
      var _debt = _.family!.debt!;
      int totalDebt = _debt.loans![0].price!+_debt.food![0].price!+_debt.brideStuff![0].price!+_debt.houseRent![0].price!+_debt.electeric![0].price!+_debt.water![0].price!+_debt.gas![0].price!;
      return ListView(
        children: [
          Container(
            color: Colors.white10,
            child: Column(
              children: [
                Center(
                  child: Text(
                    'الديون : $totalDebt (total)',
                    style: TextStyle(fontSize: 30, color: PublicColor.green),
                  ),
                ),
                CusContainerData(
                  conHeight: 90,
                  leading: 'القروض : ',
                  title: '${_debt.loans![0].price} ',
                  extraBool: true,
                  extraDetail: 'تفاصيل : ${_debt.loans![0].info}',
                ),
                CustomDevider().mineiDivider(),
                CusContainerData(
                  conHeight: 90,
                  leading: 'الطعام : ',
                  title: '${_debt.food![0].price} ',
                  extraBool: true,
                  extraDetail: 'تفاصيل : ${_debt.food![0].info}',
                ),
                CustomDevider().mineiDivider(),
                CusContainerData(
                  conHeight: 90,
                  leading: 'جهاز العروسه : ',
                  title: '${_debt.brideStuff![0].price} ',
                  extraBool: true,
                  extraDetail: 'تفاصيل : ${_debt.brideStuff![0].info}',
                ),
                CustomDevider().mineiDivider(),
                CusContainerData(
                  conHeight: 90,
                  leading: 'ايجار البيت : ',
                  title: '${_debt.houseRent![0].price} ',
                  extraBool: true,
                  extraDetail: 'تفاصيل : ${_debt.houseRent![0].info}',
                ),
                CustomDevider().mineiDivider(),
                CusContainerData(
                  conHeight: 90,
                  leading: 'العلاج : ',
                  title: 'Api not found',
                  extraBool: true,
                  extraDetail: 'تفاصيل : Api not found}',
                ),
                CustomDevider().mineiDivider(),
                CusContainerData(
                  conHeight: 90,
                  leading: 'الكهربا : ',
                  title: '${_debt.electeric![0].price} ',
                  extraBool: true,
                  extraDetail: 'تفاصيل : ${_debt.electeric![0].info}',
                ),
                CustomDevider().mineiDivider(),
                CusContainerData(
                  conHeight: 90,
                  leading: 'الميا : ',
                  title: '${_debt.water![0].price} ',
                  extraBool: true,
                  extraDetail: 'تفاصيل : ${_debt.water![0].info}',
                ),
                CustomDevider().mineiDivider(),
                CusContainerData(
                  conHeight: 90,
                  leading: 'الغاز : ',
                  title: '${_debt.gas![0].price} ',
                  extraBool: true,
                  extraDetail: 'تفاصيل : ${_debt.gas![0].info}',
                ),
                CustomDevider().fullDivider(),
              ],
            ),
          ),
        ],
      );
    });
  }
}
