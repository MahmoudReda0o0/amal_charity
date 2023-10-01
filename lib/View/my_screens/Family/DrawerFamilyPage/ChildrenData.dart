import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/ApiProvider/FamilyData.dart';
import '../Widget/CusContainerData.dart';

class ChildrenData extends StatefulWidget {
  const ChildrenData({Key? key}) : super(key: key);

  @override
  State<ChildrenData> createState() => _ChildrenDataState();
}

class _ChildrenDataState extends State<ChildrenData> {
  @override
  int childrenNum = 2;
  Widget build(BuildContext context) {
    return Consumer<ProviderFamilyData>(
      builder: (context,_,child) {
        var _children =_.family!.children!;
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: CusContainerData(
                  leading: 'عدد الاطفال : ', title: '${_.family!.children!.childrenNumber}'),
            ),
            Expanded(
              flex: 9,
              child: ListView.builder(
                itemCount: childrenNum,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        child: Column(
                          children: [
                            CusContainerData(leading: 'الأسم : ', title: '${_children.childInfo![0].name} '),
                            CusContainerData(leading: 'النوع : ', title: '${_children.childInfo![0].gender} '),
                            CusContainerData(leading: 'العمر : ', title: '${_children.childInfo![0].age} '),
                            CusContainerData(
                                leading: 'المؤهل الدراسي : ', title: 'Api not found'),
                            CusContainerData(leading: 'الوظيفه : ', title: 'Api not found '),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        height: 30,
                        color: Colors.black38,
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton.icon(
                label: Text('اضافه طفل جديد'),
                icon: Icon(Icons.add_circle),
                onLongPress: () {
                  setState(() => childrenNum = 2);
                },
                onPressed: () {
                  setState(() => childrenNum++);
                  print('childrennum  : $childrenNum');
                },
              ),
            ),
          ],
        );
      }
    );
  }
}
