import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/presentation/my_screens/Widget/CustomDivider.dart';
import 'package:flutter/material.dart';

import '../../Widget/CusContainerData.dart';


class SchoolData extends StatefulWidget {
  const SchoolData({Key? key}) : super(key: key);

  @override
  State<SchoolData> createState() => _SchoolDataState();
}

class _SchoolDataState extends State<SchoolData> {
  @override
  String dropdownValue = 'جامعي';
  String dropdownCh1='جامعي';
  String dropdownCh2='اعدادي';
  List<String> houseList = ['جامعي','ثانوي','اعدادي','ابتدائي'];
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              CusContainerData(leading: 'الأسم : ', title: 'محمد '),
              CusContainerData(leading: 'العمر : ', title: '21 '),
              CustomHouseDropButtom(dropdownValue: dropdownCh1),
            ],
          ),
        ),
        CustomDevider().mineiDivider(),
        Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              CusContainerData(leading: 'الأسم : ', title: 'محمد '),
              CusContainerData(leading: 'العمر : ', title: '21 '),
              CustomHouseDropButtom(dropdownValue: dropdownCh2),
            ],
          ),
        ),
        CustomDevider().fullDivider(),
        Center(child: Text('شنط المدرسه',style: TextStyle(color: PublicColor().green,fontSize: 20),),),
        CusContainerData(leading: 'عدد الشنط', title: '3'),
      ],
    );
  }

  Widget CustomHouseDropButtom({required String dropdownValue}){
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        height: 70,
        width: 900,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: ListTile(
            title: dropDownButton(dropdownValue: dropdownValue),
            leading: Text(
              ' المؤهل : ',
              style: TextStyle(fontSize: 16, color: Colors.black54),
              overflow: TextOverflow.ellipsis,
            ),
            onLongPress: () {
              print('long press');
            },
          ),
        ),
      ),
    );
  }

  Widget dropDownButton({required String dropdownValue}) {
    return DropdownButton<String>(
      value: dropdownValue,
      items: houseList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(fontSize: 20),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
