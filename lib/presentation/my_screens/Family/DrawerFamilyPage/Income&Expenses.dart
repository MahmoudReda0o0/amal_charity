import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/presentation/my_screens/Widget/CustomDivider.dart';
import 'package:flutter/material.dart';

import '../../Widget/CusContainerData.dart';

class IncomeExpenses extends StatelessWidget {
  const IncomeExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white10,
          child: Column(
            children: [
              Center(
                child: Text(
                  ' بيانات الدخل : 2300 (total) ',
                  style: TextStyle(
                    color: PublicColor().green,
                    fontSize: 25,
                  ),
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'الزوج : ', title: 'رافت'),
                    CusContainerData(
                        leading: 'العمل : ',
                        title: 'ورشه نجاره (كل تفاصيل الشغل )'),
                    CusContainerData(
                        leading: 'الراتب : ', title: '1500 (int only)'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'الزوجة : ', title: 'جواهر'),
                    CusContainerData(
                        leading: 'العمل : ', title: ' (كل تفاصيل الشغل )'),
                    CusContainerData(
                        leading: 'الراتب : ', title: ' (int only)'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(
                        leading: 'الابناء : ', title: 'محمد و مصطفي'),
                    CusContainerData(
                        leading: 'العمل : ', title: ' ( تفاصيل شغل كل واحد)'),
                    CusContainerData(
                        leading: 'الراتب : ', title: 'total (int only)'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(
                        leading: 'مساعدات خارجيه : ',
                        title: 'تفاصيل (String )'),
                    CusContainerData(
                        leading: 'قيمه المساعدات : ',
                        title: 'total (int only)'),
                  ],
                ),
              ),
              CustomDevider().fullDivider(),
              Center(
                child: Text(
                  'بيانات الخرج : 3000 (total)',
                  style: TextStyle(
                    color: PublicColor().green,
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
                        title: 'المصاريف ف الشهر (int only)'),
                    CusContainerData(
                        leading: 'كهربا : ',
                        title: 'المصاريف ف الشهر (int only)'),
                    CusContainerData(
                        leading: 'ميا : ',
                        title: 'المصاريف ف الشهر (int only)'),
                    CusContainerData(
                        leading: 'غاز : ',
                        title: 'المصاريف ف الشهر (int only)'),
                    CusContainerData(
                      leading: 'العلاج : ',
                      title: 'المصاريف ف الشهر (int only)',
                    ),
                    CusContainerData(
                        leading: 'الطعام : ',
                        title: 'المصاريف ف الشهر (int only)'),
                    CusContainerData(
                        leading: 'مصاريف اخري : ', title: 'تفاصيل (String)'),
                    CusContainerData(
                        leading: 'المبلغ : ', title: 'total (int only) '),
                  ],
                ),
              ),
              CustomDevider().fullDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children:[
                    CusContainerData(leading: 'النسبه : ', title: '0.76'),
                    CusContainerData(leading: 'فئه الأسرة :', title: ' C '),
                    CusContainerData(leading: 'الشهريه : ', title: '250'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }


}
