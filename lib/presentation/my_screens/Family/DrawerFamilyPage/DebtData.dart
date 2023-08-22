import 'package:flutter/material.dart';

import '../../../../constants/my_colors.dart';
import '../../Widget/CusContainerData.dart';
import '../../Widget/CustomDivider.dart';

class DebtData extends StatelessWidget {
  const DebtData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.white10,
          child: Column(
            children: [
              Center(child: Text('الديون : 5000 (total)',style: TextStyle(fontSize: 30,color: PublicColor().green),),),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'القروض : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'الطعام : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'جهاز العروصه : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'ايجار البيت : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'العلاج : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'كهربا : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'ميا : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'غاز : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().mineiDivider(),
              Container(
                color: Colors.grey[200],
                child: Column(
                  children: [
                    CusContainerData(leading: 'قروض اخري : ', title: 'تفاصيل '),
                    CusContainerData(
                        leading: 'قيمه القروض : ',
                        title: 'total double'),
                  ],
                ),
              ),
              CustomDevider().fullDivider(),

            ],
          ),
        ),
      ],
    );
  }

}
