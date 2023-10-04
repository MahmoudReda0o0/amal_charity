import 'package:amal_charity/Data/models/family_detailed.dart';
import 'package:amal_charity/View/my_screens/Family/FamilyList.dart';
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
import '../../Widget/buildMenuItem.dart';
import 'Family Pages/BrideData.dart';
import 'Family Pages/ChildrenData.dart';
import 'Family Pages/DebtData.dart';
import 'Family Pages/FamilyProfile.dart';
import 'Family Pages/HouseData.dart';
import 'Family Pages/Income&Expenses.dart';
import 'Family Pages/MedicalData.dart';
import 'Family Pages/ParentsData.dart';
import 'Family Pages/SchoolData.dart';
import 'Widget/ScrollAdminButton.dart';

// ignore: must_be_immutable
class AdminPageForm extends StatefulWidget {
  @override
  State<AdminPageForm> createState() => _AdminPageFormState();
}

class _AdminPageFormState extends State<AdminPageForm> {
  final appProvider = Provider.of<ProviderAppData>(
      navigationKey.currentContext!,
      listen: false);
  Future<bool> _onWillPop() async {
    if (appProvider.adminMode == false) {
      return true;
    } else {
      return (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('You are in Admin Mode'),
              content: const Text('Do you want realy to exit ?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pop(false), //<-- SEE HERE
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FamilyList())); // <-- SEE HERE
                  },
                  child: const Text('Yes'),
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
      child: SafeArea(
        child: Consumer<ProviderAppData>(builder: (context, _, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
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
              leading: drawerSetting(providerAppData: _),
              actions: [
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AdminAlertDialog();
                      },
                    );
                  },
                  icon: Icon(
                    Icons.admin_panel_settings,
                    color: Colors.yellow,
                    size: mediaW * 0.1,
                  ),
                ),
              ],
            ),
            drawer: Drawer(
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
                    height: mediaH,
                    width: mediaW,
                    color: Colors.green,
                  ),
                  Column(
                    children: [
                      ScrollAdminButton(),
                      SizedBox(
                        height: mediaH * 0.015,
                      ),
                      SingleChildScrollView(
                        child: Column(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: mediaH * 0.82,
                              width: mediaW,
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
                              child: _.scrollIndex == 0
                                  ? const FamilyProfile()
                                  : _.scrollIndex == 1
                                      ? const ParentsData()
                                      : _.scrollIndex == 2
                                          ? const ChildrenData()
                                          : _.scrollIndex == 3
                                              ? const IncomeExpenses()
                                              : _.scrollIndex == 4
                                                  ? const DebtData()
                                                  : _.scrollIndex == 5
                                                      ? const HouseData()
                                                      : _.scrollIndex == 6
                                                          ? const MedicalData()
                                                          : _.scrollIndex == 7
                                                              ? const SchoolData()
                                                              : const BrideData(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget drawerSetting({required ProviderAppData providerAppData}) {
    return Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
              Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.settings,
            size: mediaW * 0.1,
            color: Colors.white,
          ),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    );
  }
}
