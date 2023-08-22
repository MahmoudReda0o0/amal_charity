import 'package:amal_charity/presentation/my_screens/Widget/CusContainerData.dart';
import 'package:flutter/material.dart';


class BrideData extends StatelessWidget {
  const BrideData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CusContainerData(leading: 'التاريخ : ', title: "10 / 5 / 2024"),

        CusContainerData(leading: 'نوع الجواز 😑 : ', title: 'تفاصيل'),
        CusContainerData(leading: 'تلاجه : ', title: 'false'),
        CusContainerData(leading: 'بوتجاز : ', title: 'true'),
        CusContainerData(leading: 'غشاله : ', title: 'true'),
        CusContainerData(leading: 'مطبخ : ', title: 'false'),
      ],
    );
  }
}
