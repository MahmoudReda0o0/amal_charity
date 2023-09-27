import 'package:flutter/material.dart';

import '../../Data/models/family_detailed.dart';
import '../../State Managment/api/get_all_families/families_cubit.dart';

class BottomSheetForm extends StatefulWidget {
  final FamiliesCubit cubit;
  const BottomSheetForm({required this.cubit, super.key});
  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  final nameController = TextEditingController();

  final addressController = TextEditingController();

  final phoneController = TextEditingController();
  late final GlobalKey<FormState> formKey;
  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
                autofocus: true,
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
                  if (formKey.currentState!.validate()) {
                    FamilyDetailedModel family = FamilyDetailedModel(
                      familyInfo: FamilyInfoFromDetailed(
                        familyBreadWinner: nameController.text,
                        familyAdress: addressController.text,
                      ),
                    );

                    widget.cubit.addNewFamily(
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
