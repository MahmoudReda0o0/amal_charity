import 'package:amal_charity/State%20Managment/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../my_screens/PDF/PDFScreen.dart';
import '../my_screens/Widget/CusListTileNav.dart';

class BuildMenuItems extends StatefulWidget {
  const BuildMenuItems({Key? key}) : super(key: key);

  @override
  State<BuildMenuItems> createState() => _BuildMenuItemsState();
}

class _BuildMenuItemsState extends State<BuildMenuItems> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderAppData>(builder: (context, _, child) {
      return Column(children: [
        button(text: 'عرض الملاحظات ', fun: () {}),
        button(text: 'PDF  طباعة  ', fun: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PDFScreen()));
        }),
        button(
            text: ' ( ${_.editData} )  تعديل البيانات ',
            fun: () {
              _.settingEditData();
              Navigator.pop(context);
            }),
        button(text: 'إضافه أسره جديدة', fun: () {}),
        button(text: 'حذف الأسرة', fun: () {})
      ]);
    });
  }

  Widget button({required String text, required Function fun}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        ),
          onPressed: () {
            fun();
          },
          child: Center(
            child: Text(text,style: TextStyle(fontSize: mediaW*0.045),),
          )),
    );
  }
}
