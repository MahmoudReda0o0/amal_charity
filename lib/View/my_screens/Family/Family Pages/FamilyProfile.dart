import 'package:amal_charity/State%20Managment/Provider/AppProvider/TextEditingController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widget/CusContainerData.dart';
import '../Widget/CusUpdateButton.dart';

class FamilyProfile extends StatelessWidget {
  const FamilyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderTextEditingController>(
      builder: (context,_,child) {
        return ListView(
          children: [
            CusContainerData(leading: 'افراد الأسرة :', title: '${_.conTeleNumber.text}'),
            CusContainerData(leading: "فئه الأسرة :", title: "فئه C بنسبه 40%"),
            CusContainerData(leading: 'الشهريه :', title: "شنطه + 250ج"),
            CusContainerData(title: 'رافت محمد ', leading: "اسم الزوج :"),
            CusContainerData(leading: 'الوظيفة : ', title: "ورشه نجاره"),
            CusContainerData(leading: "اسم الزوجة :", title: "جواهر فوزي"),
            CusContainerData(leading: "الوظيفة : ", title: ' ربه منزل '),
            CusContainerData(leading: "العنوان :", title: " الدراسات امام معرض شباب التحرير خلف حلواني النجمه الذهبيه ش 93 فؤاد بيت امام المطبعه باب جراج ",conHeight: 130,),
            CusContainerData(leading: "رقم التلفون :", title: "01501860525"),
            CusContainerData(leading: 'الابناء : ', title: 'مصطفي / ريم / عبد الغفور'),
            CusUpdateButton(),
          ],
        );
      }
    );
  }
}
