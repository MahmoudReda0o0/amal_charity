import 'package:flutter/material.dart';

import '../../Data/models/family_detailed.dart';
import '../../State Managment/api/get_all_families/families_cubit.dart';

final _formKey = GlobalKey<FormState>();

class BottomSheetForm extends StatelessWidget {
  FamiliesCubit cubit;
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();

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
                    return "Sorry you have to fill this field!";
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