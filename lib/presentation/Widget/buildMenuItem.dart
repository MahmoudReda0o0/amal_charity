import 'package:amal_charity/constants/constantValues.dart';
import 'package:amal_charity/presentation/my_screens/Widget/CusListTileNav.dart';
import 'package:flutter/material.dart';

class BuildMenuItems extends StatefulWidget {
  const BuildMenuItems({Key? key}) : super(key: key);

  @override
  State<BuildMenuItems> createState() => _BuildMenuItemsState();
}

class _BuildMenuItemsState extends State<BuildMenuItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        PublicData.familyObject.length,
        (index) {
          return CusListTileNav(
            itemIndex: index,
            title: PublicData.familyObject[index],
            routePage: PublicData.pageRoute[index],
            leadingIcon: PublicData.DrawerIcon[index],
          );
        },
      ),
      // children: [
      //   CusListTileNav(
      //     itemIndex: 0,
      //       navPage: FamilyProfile(),
      //       title: 'بيانات الاسره ',
      //       leadingIcon: Icons.family_restroom),
      //   CusListTileNav(
      //     itemIndex: 1,
      //       navPage: ParentsData(),
      //       title: 'بيانات الوالدين ',
      //       leadingIcon: Icons.family_restroom),
      //   CusListTileNav(
      //     itemIndex: 2,
      //       navPage: FamilyProfile(),
      //       title: 'بيانات الابناء ',
      //       leadingIcon: Icons.family_restroom),
      //   CusListTileNav(
      //     itemIndex: 3,
      //       navPage: FamilyProfile(),
      //       title: 'بيانات المنزل ',
      //       leadingIcon: Icons.family_restroom),
      //   CusListTileNav(
      //     itemIndex: 4,
      //       navPage: FamilyProfile(),
      //       title: 'بيانات الدخل والخرج ',
      //       leadingIcon: Icons.family_restroom),
      //   CusListTileNav(
      //     itemIndex: 5,
      //       navPage: FamilyProfile(),
      //       title: 'بيانات العلاج ',
      //       leadingIcon: Icons.family_restroom),
      //   CusListTileNav(
      //     itemIndex: 6,
      //       navPage: FamilyProfile(),
      //       title: 'بيانات الاسرة ',
      //       leadingIcon: Icons.family_restroom),
      // ],
    );
  }
}
