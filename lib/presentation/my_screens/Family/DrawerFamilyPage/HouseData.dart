import 'package:amal_charity/presentation/my_screens/Widget/CustomDivider.dart';
import 'package:flutter/material.dart';

import '../../Widget/CusContainerData.dart';

class HouseData extends StatefulWidget {
  const HouseData({Key? key}) : super(key: key);

  @override
  State<HouseData> createState() => _HouseDataState();
}

class _HouseDataState extends State<HouseData> {
  @override
  String dropdownValue = 'ايجار';
  List<String> houseList = ['ميراث', 'ايجار', 'تميلك'];
  Widget build(BuildContext context) {
    double mediaH = MediaQuery.of(context).size.height;
    double mediaW = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        CustomHouseDropButtom(),
        CusContainerData(leading: 'ايجار الشهر : ', title: " int "),
        CusContainerData(leading: 'عدد الغرف : ', title: 'int'),
        CustomDevider().fullDivider(),
        Center(child: Text('البطاطين ',style: TextStyle(color: Colors.green,fontSize: 30),),),
        CusContainerData(leading: 'مع الاسره : ', title: " 1 "),
        CusContainerData(leading: 'العدد المطلوب : ', title: " 4 "),
        CusContainerData(leading: 'العدد اللي خارج : ', title: " 2 "),


      ],
    );
  }

  Widget CustomHouseDropButtom(){
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
            title: dropDownButton(),
            leading: Text(
              ' المنزل : ',
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

  Widget dropDownButton() {
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
