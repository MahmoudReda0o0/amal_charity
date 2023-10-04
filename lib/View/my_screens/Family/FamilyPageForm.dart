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
import '../../Widget/buildMenuItem.dart';
import 'Family Pages/ChildrenData.dart';
import 'Family Pages/FamilyProfile.dart';
import 'Widget/ScrollAdminButton.dart';

// ignore: must_be_immutable
class FamilyPageForm extends StatefulWidget {
  const FamilyPageForm({
    Key? key,
  }) : super(key: key);

  @override
  State<FamilyPageForm> createState() => _FamilyPageFormState();
}

class _FamilyPageFormState extends State<FamilyPageForm> {
  FamilyDetailedModel? family;
  final appProvider = Provider.of<ProviderAppData>(
      navigationKey.currentContext!,
      listen: false,
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer2<ProviderAppData, ProviderTextEditingController>(
          builder: (context, _, __, child) {
        return Scaffold(
          backgroundColor: PublicColor.one,
          appBar: AppBar(
            backgroundColor: Colors.green,
            bottomOpacity: 0.0,
            elevation: 0.0,
            title: const Text(
              "بيانات الأسرة",
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
            leading: familyNote(providerAppData: _),
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
                  color: Colors.white,
                  size: mediaW * 0.08,
                ),
              ),
            ],
          ),
          body: BlocConsumer<FamiliesCubit, FamiliesState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state is! Loading || state is! Error
                    ? Directionality(
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
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: mediaH * 0.9,
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
                                        bottomRight: Radius.circular(35),
                                        bottomLeft: Radius.circular(35),
                                      ),
                                    ),
                                    child: const FamilyProfile(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : const Center(child: CircularProgressIndicator());
              },
              ),
        );
      }),
    );
  }

  Widget familyNote({required ProviderAppData providerAppData}) {
    return Builder(
      builder: (context) {
        return IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: const Text('Write family note'),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: Colors.red, fontSize: mediaW * 0.05),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Send',
                        style: TextStyle(
                            color: Colors.green, fontSize: mediaW * 0.05),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          icon: Icon(
            Icons.edit,
            size: mediaW * 0.08,
            color: Colors.white,
          ),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    );
  }
}
