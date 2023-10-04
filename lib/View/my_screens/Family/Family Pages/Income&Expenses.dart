import 'package:amal_charity/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../Widget/CusContainerData.dart';
import '../../Widget/CustomDivider.dart';
import '../Widget/CusUpdateButton.dart';

class IncomeExpenses extends StatelessWidget {
  const IncomeExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderFamilyData>(builder: (context, _, child) {
      var _income = _.family!.income!;
      var _expenses = _.family!.expenses!;
      var _husband = _.family!.husband!;
      var _wife = _.family!.wife!;
      var _children = _.family!.children!;
      int totalIncome = _income.husbandJob!.price! + _income.wifeJob!.price! + _income.childrenjob![0].price! + _income.pension!.price!+_income.otherCharitiesHelp!.price!+_income.other![0].price!;
      int totalExpenses=_expenses.houseRent! + _expenses.basicNeed!.electricity! + _expenses.basicNeed!.water! + _expenses.basicNeed!.gas!+ _expenses.medicine! + _expenses.food!.price!+_expenses.other![0].price!;
      return ListView(
        children: [
          Container(
            color: Colors.white10,
            child: Column(
              children: [
                Center(
                  child: Text(
                    ' بيانات الدخل : $totalIncome (total) ',
                    style: TextStyle(
                      color: PublicColor.green,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      CusContainerData(
                          leading: 'الزوج : ', title: '${_husband.name}'),
                      CusContainerData(
                          leading: 'العمل : ', title: '${_husband.job}'),
                      CusContainerData(
                          leading: 'الراتب : ',
                          title: '${_income.husbandJob!.price}'),
                    ],
                  ),
                ),
                CustomDevider().mineiDivider(),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      CusContainerData(
                          leading: 'الزوجة : ', title: '${_wife.name}'),
                      CusContainerData(
                          leading: 'العمل : ', title: ' ${_wife.job}'),
                      CusContainerData(
                          leading: 'الراتب : ',
                          title: ' ${_income.wifeJob!.price}'),
                    ],
                  ),
                ),
                CustomDevider().mineiDivider(),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      CusContainerData(
                          leading: 'الابناء : ',
                          title: '${_children.childInfo![0].name}'),
                      CusContainerData(
                          leading: 'العمل : ',
                          title: ' ${_income.childrenjob![0].info}'),
                      CusContainerData(
                          leading: 'الراتب : ',
                          title: '${_income.childrenjob![0].price}'),
                    ],
                  ),
                ),
                CustomDevider().mineiDivider(),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      CusContainerData(
                        conHeight: 90,
                        leading: 'المعاش : ',
                        title: '${_income.pension!.price}',
                        extraDetail: 'تفاصيل :  ${_income.pension!.info}',
                        extraBool: true,
                      ),
                      CusContainerData(
                        conHeight: 90,
                        leading: 'جمعيات اخري : ',
                        title: '${_income.otherCharitiesHelp!.price}',
                        extraDetail:
                            'تفاصيل :  ${_income.otherCharitiesHelp!.info}',
                        extraBool: true,
                      ),
                      CusContainerData(
                        conHeight: 90,
                        leading: 'مساعدات خارجيه : ',
                        title: '${_income.other![0].price}',
                        extraDetail: 'تفاصيل :  ${_income.other![0].info}',
                        extraBool: true,
                      ),
                      CusUpdateButton(),
                    ],
                  ),
                ),
                CustomDevider().fullDivider(),
                Center(
                  child: Text(
                    'بيانات الخرج : $totalExpenses (total)',
                    style: TextStyle(
                      color: PublicColor.green,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      CusContainerData(
                          leading: 'ايجار المنزل : ',
                          title: '${_expenses.houseRent}'),
                      CusContainerData(
                          leading: 'كهربا : ',
                          title: '${_expenses.basicNeed!.electricity}'),
                      CusContainerData(
                          leading: 'ميا : ',
                          title: '${_expenses.basicNeed!.water}'),
                      CusContainerData(
                          leading: 'غاز : ',
                          title: '${_expenses.basicNeed!.gas}'),
                      CusContainerData(
                          leading: 'العلاج : ', title: '${_expenses.medicine}'),
                      CusContainerData(
      conHeight: 90,
                          extraBool: true,
                          extraDetail: 'تفاصيل :  ${_expenses.food!.info!}',
                          leading: 'الطعام : ',
                          title: '${_expenses.food!.price}'),
                      CusContainerData(
                          conHeight: 90,
                          leading: 'مصاريف اخري : ',
                          title: '${_expenses.other![0].price}',
                          extraBool: true,
                          extraDetail: 'تفاصيل :  ${_expenses.other![0].info}'),
                      CusContainerData(
                          leading: 'المبلغ : ', title: 'total (int only) '),
                    ],
                  ),
                ),
                CustomDevider().fullDivider(),
                Container(
                  color: Colors.grey[200],
                  child: Column(
                    children: [
                      CusContainerData(leading: 'النسبه : ', title: '${totalIncome/totalExpenses}'),
                      CusContainerData(leading: 'فئه الأسرة :', title: ' C '),
                      CusContainerData(leading: 'الشهريه : ', title: '250'),
                    ],
                  ),
                ),
                CusUpdateButton(),
              ],
            ),
          ),
        ],
      );
    });
  }
}
