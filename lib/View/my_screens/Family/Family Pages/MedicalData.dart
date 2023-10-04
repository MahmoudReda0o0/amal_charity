
import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/data/models/family_detailed.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../Widget/CusContainerData.dart';
import '../../Widget/CustomDivider.dart';
import '../Widget/CusUpdateButton.dart';

class MedicalData extends StatefulWidget {
  const MedicalData({Key? key}) : super(key: key);

  @override
  State<MedicalData> createState() => _MedicalDataState();
}




class _MedicalDataState extends State<MedicalData> {
  @override
  int husbandMedic =3;
  int wifeMedic=2;
  int childMedic=1;
  Widget build(BuildContext context) {
    return Consumer<ProviderFamilyData>(
      builder: (context,_,child) {
        var _medicine = _.family!.medicine!;
        return ListView(
          children: [
            CusContainerData(leading: 'العلاج كامل', title: '1300 (int only)'),
            CustomListGenerate('علاج الاب',0,_medicine),
            CustomListGenerate('علاج الام',1,_medicine),
            CustomListGenerate('علاج الابناء',2,_medicine),
            CusUpdateButton(),
          ],
        );
      }
    );
  }

  Widget CustomListGenerate(String title,int medicinType,BasicClass _medicine) {
    return Container(
      //color: Colors.cyan,
      child: Column(
        children: [
          ListTile(
            title: Text(
              '$title : 350(Total)',
              style: TextStyle(fontSize: 25, color: PublicColor.green),
            ),
            leading: IconButton(
                icon: Icon(Icons.add_circle),
                onPressed: () {
                  switch (medicinType){
                    case 0 :
                      setState(()=> husbandMedic++);
                      break;
                    case 1 :
                      setState(()=>wifeMedic++);
                      break;
                    case 2:
                      setState(()=>childMedic++);
                      print(childMedic);
                  }
                  print(medicinType);
                }),
            onLongPress: (){
              setState(()=>husbandMedic = wifeMedic = childMedic =2);
            },
          ),
          Column(
            children: List.generate(
              medicinType==0 ?husbandMedic:medicinType==1?wifeMedic:childMedic,
              (index) => Column(
                children: [
                  CusContainerData(leading: 'اسم الدواء', title: " ${_medicine.info} "),
                  CusContainerData(leading: 'التركيز', title: '${_medicine.price}'),
                  CustomDevider().mineiDivider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
