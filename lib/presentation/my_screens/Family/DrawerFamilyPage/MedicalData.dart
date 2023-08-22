import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/presentation/my_screens/Widget/CusContainerData.dart';
import 'package:amal_charity/presentation/my_screens/Widget/CustomDivider.dart';
import 'package:flutter/material.dart';

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
    return ListView(
      children: [
        CusContainerData(leading: 'العلاج كامل', title: '1300 (int only)'),
        CustomListGenerate('علاج الاب',0),
        CustomListGenerate('علاج الام',1),
        CustomListGenerate('علاج الابناء',2),
      ],
    );
  }

  Widget CustomListGenerate(String title,int medicinType) {
    return Container(
      //color: Colors.cyan,
      child: Column(
        children: [
          ListTile(
            title: Text(
              '$title : 350(Total)',
              style: TextStyle(fontSize: 25, color: PublicColor().green),
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
                  CusContainerData(leading: 'اسم الدواء', title: " كيتوفان "),
                  CusContainerData(leading: 'التركيز', title: '500'),
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
