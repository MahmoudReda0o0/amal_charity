import 'package:amal_charity/State%20Managment/Provider/AppProvider/TextEditingController.dart';
import 'package:amal_charity/View/my_screens/Family/AdminFamilyPageForm.dart';
import 'package:amal_charity/data/models/families_model.dart';
import 'package:amal_charity/data/models/family_detailed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import '../../../State Managment/api/get_all_families/families_cubit.dart';
import '../../Widget/my_bottom_sheet.dart';
import 'FamilyPageForm.dart';

class FamilyList extends StatelessWidget {
  const FamilyList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = FamiliesCubit.get(context);
    if (cubit.families.isEmpty) {
      cubit.getAllFamilies();
    }

    return Scaffold(
      backgroundColor: HexColor("#F7F2EC"),
      appBar: AppBar(
        title: const Text(
          "قائمة الاسر",
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: BlocConsumer<FamiliesCubit, FamiliesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return cubit.families.isNotEmpty
              ? ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Directionality(
                      textDirection: TextDirection.rtl,
                      child: _buildListItem(
                        index,
                        context,
                        cubit.families[index],
                      ),
                    );
                  },
                  itemCount: cubit.families.length,
                  separatorBuilder: (context, index,) => Container(),
                )
              : const Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: BottomSheetForm(cubit: cubit),
              );
            },
            isScrollControlled: true,
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget _buildListItem(int index, BuildContext context, FamilyModel family) {
    return BlocConsumer<FamiliesCubit, FamiliesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return InkWell(
          onTap: () async {
            print("The id of the family is ${family.id}");
            final cubit = FamiliesCubit.get(context);
            cubit.getFamilyById(family.id!, context);

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FamilyPageForm(),
              ),
            );
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.14,
            clipBehavior: Clip.hardEdge,
            margin: const EdgeInsetsDirectional.symmetric(
                horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.transparent,
                width: 0.0,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.14,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.transparent, width: 2.0),
                    ),
                    child: Center(
                      child: Text(
                        'الاسرة \n${index + 1}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 4,
                      top: 4,
                      bottom: 4,
                      end: 4,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'الاسم/ ${family.familyInfo?.familyBreadWinner ?? " "}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'العنوان/ ${family.familyInfo?.familyAdress ?? " "}',
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            'التليفون/ 010894050302',
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
