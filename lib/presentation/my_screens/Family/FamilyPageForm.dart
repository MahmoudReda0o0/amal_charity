import 'package:amal_charity/business_logic/Provider/AppProvider/ProviderAppData.dart';
import 'package:amal_charity/constants/my_colors.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/ChildrenData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/DebtData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/FamilyProfile.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/HouseData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/Income&Expenses.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/ParentsData.dart';
import 'package:amal_charity/presentation/my_screens/Family/DrawerFamilyPage/SchoolData.dart';
import 'package:amal_charity/presentation/my_screens/Family/Widget/buildHeader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'DrawerFamilyPage/BrideData.dart';
import 'DrawerFamilyPage/MedicalData.dart';
import 'Widget/buildMenuItem.dart';

class FamilyPageForm extends StatefulWidget {
  const FamilyPageForm({Key? key}) : super(key: key);

  @override
  State<FamilyPageForm> createState() => _FamilyPageFormState();
}

class _FamilyPageFormState extends State<FamilyPageForm> {
  @override
  Widget build(BuildContext context) {
    double mediaH = MediaQuery.of(context).size.height;
    double mediaW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Consumer<ProviderAppData>(builder: (context, _, child) {
        return Scaffold(
          backgroundColor: PublicColor().one,
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: Text(
              '${_.familyAppBar}',
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
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
                            child: Icon(
                              Icons.add_circle,
                              size: 50,
                              color: Colors.red,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                child: Text('Buy Now'),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                child: Text('Buy Later',style: TextStyle(color: Colors.red),),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.edit))
            ],
          ),
          drawer: Drawer(
            //backgroundColor: Colors.yellow,
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
              Column(
                children: [
                  SizedBox(
                    height: mediaH * 0.03, width: mediaW,
                    //color: Colors.red,
                    child: Row(
                      children: [],
                    ),
                  ),
                  Container(
                    height: mediaH * 0.86,
                    width: mediaW,
                    padding: EdgeInsets.only(
                        right: 10, left: 10, bottom: 5, top: 11),
                    decoration: BoxDecoration(
                      color: PublicColor().one,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35),
                      ),
                    ),
                    child: _.drawerIndex == 0
                        ? FamilyProfile()
                        : _.drawerIndex == 1
                            ? ParentsData()
                            : _.drawerIndex == 2
                                ? ChildrenData()
                                : _.drawerIndex == 3
                                    ? IncomeExpenses()
                                    : _.drawerIndex == 4
                                        ? DebtData()
                                        : _.drawerIndex == 5
                                            ? HouseData()
                                            : _.drawerIndex == 6
                                                ? MedicalData()
                                                : _.drawerIndex == 7
                                                    ? SchoolData()
                                                    : BrideData(),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
