import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../../Widget/CusContainerData.dart';
import '../../Widget/CustomDivider.dart';

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
    return Consumer<ProviderFamilyData>(
      builder: (context,_,child) {
        var _house = _.family!.houseInfo!;
        return ListView(
          children: [
            CustomHouseDropButtom(),
            CusContainerData(leading: 'ايجار الشهر : ', title: " ${_house.houseType} "),
            CusContainerData(leading: 'عدد الغرف : ', title: '${_house.roomsNumber}'),
            CustomDevider().fullDivider(),
            Center(child: Text('البطاطين ',style: TextStyle(color: Colors.green,fontSize: 30),),),
            CusContainerData(leading: 'مع الاسره : ', title: " ${_house.blankets!.familyHave!} "),
            CusContainerData(leading: 'العدد المطلوب : ', title: " ${_house.blankets!.familyNeed!} "),
            CusContainerData(leading: 'العدد اللي خارج : ', title: " ${_house.blankets!.familyTake!} "),


          ],
        );
      }
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