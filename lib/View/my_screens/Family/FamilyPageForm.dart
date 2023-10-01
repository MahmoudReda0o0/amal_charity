import 'package:amal_charity/Data/models/family_detailed.dart';
import 'package:amal_charity/View/my_screens/Family/Widget/admin%20Alert%20Dialog.dart';
import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../../State Managment/Provider/AppProvider/ProviderAppData.dart';
import '../../../State Managment/Provider/AppProvider/TextEditingController.dart';
import '../../../State Managment/api/get_all_families/families_cubit.dart';
import '../../../constants/constantValues.dart';
import '../../../data/repositories/families_repo.dart';
import '../../../data/web_services/families_web_services.dart';
import '../../Widget/buildHeader.dart';
import 'DrawerFamilyPage/BrideData.dart';
import 'DrawerFamilyPage/ChildrenData.dart';
import 'DrawerFamilyPage/DebtData.dart';
import 'DrawerFamilyPage/FamilyProfile.dart';
import 'DrawerFamilyPage/HouseData.dart';
import 'DrawerFamilyPage/Income&Expenses.dart';
import 'DrawerFamilyPage/MedicalData.dart';
import '../../Widget/buildMenuItem.dart';
import 'DrawerFamilyPage/ParentsData.dart';
import 'DrawerFamilyPage/SchoolData.dart';

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
  final appProvider = Provider.of<ProviderAppData>(
      navigationKey.currentContext!,
      listen: false);
  Future<bool> _onWillPop() async {
    if (appProvider.adminMode == false)
      return true;
    else {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: new Text('You are in Admin Mode'),
              content: new Text('Do you want realy to exit ?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(false), //<-- SEE HERE
                  child: new Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    appProvider.exitAdminMode();
                    Navigator.of(context).pop(true); // <-- SEE HERE
                  },
                  child: new Text('Yes'),
                ),
              ],
            ),
          )) ??
          false;
    }
  }

  // @override
  // void initState(){
  //   super.initState();
  //   Provider.of<ProviderTextEditingController>(context,listen: false).getFamilyData();
  // }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: BlocProvider<FamiliesCubit>(
        create: (context) => FamiliesCubit(
          repo: FamiliesRepo(
            FamiliesWebServices(),
          ),
        )..getFamilyById(widget.familyId, context),
        child: SafeArea(
          child: Consumer2<ProviderAppData, ProviderTextEditingController>(
              builder: (context, _, __, child) {
            return Scaffold(
              backgroundColor: PublicColor.one,
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
                          return AdminAlertDialog();
                        },
                      );
                    },
                    icon: Icon(
                      Icons.edit,
                      color: _.adminMode ? Colors.yellow : Colors.white,
                      size: _.adminMode ? 35 : 25,
                    ),
                  ),
                ],
              ),
              drawer: const Drawer(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BuildHeader(),
                      BuildMenuItems(),
                    ],
                  ),
                ),
              ),
              body: Directionality(
                textDirection: TextDirection.rtl,
                child: Stack(
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
                              color: PublicColor.one,
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
              ),
            );
          }),
        ),
      ),
    );
  }
}
