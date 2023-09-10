import 'package:amal_charity/business_logic/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/data/models/family_detailed.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/ChildrenData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/DebtData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/FamilyProfile.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/HouseData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/Income&Expenses.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/ParentsData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/SchoolData.dart';
import 'package:amal_charity/presentation/Widget/buildHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../../business_logic/Provider/ApiProvider/FamilyData.dart';
import '../../../business_logic/api/get_all_families/families_cubit.dart';
import '../../../data/repositories/families_repo.dart';
import '../../../data/web_services/families_web_services.dart';
import 'DrawerFamilyPage/BrideData.dart';
import 'DrawerFamilyPage/MedicalData.dart';
import '../../Widget/buildMenuItem.dart';

// ignore: must_be_immutable
class FamilyPageForm extends StatefulWidget {
  String familyId;
  int index;
  FamilyPageForm({
    required this.familyId,
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  State<FamilyPageForm> createState() => _FamilyPageFormState();
}

class _FamilyPageFormState extends State<FamilyPageForm> {
  FamilyDetailedModel? family;

  @override
  Widget build(BuildContext context) {
    double mediaH = MediaQuery.of(context).size.height;
    double mediaW = MediaQuery.of(context).size.width;
    return BlocProvider<FamiliesCubit>(
      create: (context) =>
          FamiliesCubit(repo: FamiliesRepo(FamiliesWebServices()))
            ..getFamilyById(widget.familyId, context),
      child: SafeArea(
        child: Consumer<ProviderAppData>(builder: (context, _, child) {
          return BlocConsumer<FamiliesCubit, FamiliesState>(
              listener: (context, state) {},
              builder: (context, state) {
                var cubit = FamiliesCubit.get(context);

                ///This is the family ya hoda
                family = cubit.family;
                return Scaffold(
                  backgroundColor: PublicColor().one,
                  appBar: AppBar(
                    backgroundColor: Colors.green,
                    bottomOpacity: 0.0,
                    elevation: 0.0,
                    title: Text(
                      _.familyAppBar,
                      style: const TextStyle(fontSize: 25),
                    ),
                    centerTitle: true,
                    actions: [
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text(
                                    "You aren't allow to open Edit Page",
                                    style: TextStyle(fontSize: 27),
                                    textAlign: TextAlign.center,
                                  ),
                                  content: Text('Buy Premium New',
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellow[600]),
                                      textAlign: TextAlign.left),
                                  icon: Transform.rotate(
                                    angle: 2.4,
                                    child: const Icon(
                                      Icons.add_circle,
                                      size: 50,
                                      color: Colors.red,
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        cubit.getFamilyById(
                                            widget.familyId, context);
                                        print('${Provider.of<ProviderFamilyData>(context,listen: false).family!.husband!.name}');
                                      },
                                      child: Container(
                                        child: const Text('Family Api '),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        child: const Text('Buy Now'),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        child: const Text(
                                          'Buy Later',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: const Icon(Icons.edit))
                    ],
                  ),
                  drawer:  Drawer(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          BuildHeader(),
                          BuildMenuItems(),
                        ],
                      ),
                    ),
                  ),
                  body: Stack(
                    children: [
                      Container(
                        height: mediaH * 0.3,
                        width: mediaW,
                        color: Colors.green,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: mediaH * 0.03,
                              width: mediaW,
                            ),
                            Container(
                              width: mediaW,
                              height: mediaH * 0.85,
                              padding: const EdgeInsets.only(
                                right: 10,
                                left: 10,
                                bottom: 10,
                                top: 11,
                              ),
                              decoration: BoxDecoration(
                                color: PublicColor().one,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(35),
                                  topLeft: Radius.circular(35),
                                ),
                              ),
                              child: _.drawerIndex == 0
                                  ? const FamilyProfile()
                                  : _.drawerIndex == 1
                                      ? const ParentsData()
                                      : _.drawerIndex == 2
                                          ? const ChildrenData()
                                          : _.drawerIndex == 3
                                              ? const IncomeExpenses()
                                              : _.drawerIndex == 4
                                                  ? const DebtData()
                                                  : _.drawerIndex == 5
                                                      ? const HouseData()
                                                      : _.drawerIndex == 6
                                                          ? const MedicalData()
                                                          : _.drawerIndex == 7
                                                              ? const SchoolData()
                                                              : const BrideData(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
        }),
      ),
    );
  }
}
