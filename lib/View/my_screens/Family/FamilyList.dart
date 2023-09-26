import 'package:amal_charity/data/models/families_model.dart';
import 'package:amal_charity/data/models/family_detailed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../State Managment/api/get_all_families/families_cubit.dart';
import 'FamilyPageForm.dart';

class FamilyList extends StatelessWidget {
  const FamilyList({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = FamiliesCubit.get(context);
    cubit.getAllFamilies();
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
          return state is GetFamiliesSuccessState
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
                  separatorBuilder: (context, index) => Container(),
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
              return BottomSheetForm(cubit: cubit);
            },
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
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FamilyPageForm(
            familyId: family.id ?? "",
            index: index,
          ),
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.14,
        clipBehavior: Clip.hardEdge,
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
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
  }
}

class BottomSheetForm extends StatelessWidget {
  FamiliesCubit cubit;
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  BottomSheetForm({required this.cubit, super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Enter Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Sorry youhave to fill this field!";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: addressController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Sorry youhave to fill this field!";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Sorry you have to fill this field!";
                  }
                  if (value.length != 11 || value.length != 10) {
                    return "sorry the phone must be 10 or 11  character";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    FamilyDetailedModel family = FamilyDetailedModel(
                      familyInfo: FamilyInfoFromDetailed(
                        familyBreadWinner: nameController.text,
                        familyAdress: addressController.text,
                      ),
                    );

                    cubit.addNewFamily(
                      family: family.toJson(),
                    );
                    Navigator.of(context).pop(); // Close the bottom sheet
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
