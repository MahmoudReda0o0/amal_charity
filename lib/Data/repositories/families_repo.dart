import 'dart:developer';

import '../models/families_model.dart';

import '../models/family_detailed.dart';
import '../web_services/families_web_services.dart';

class FamiliesRepo {
  final FamiliesWebServices webServices;
  FamiliesRepo(this.webServices);

  Future<List<FamilyModel>> getFamilies() async {
    final families = await webServices.getFamilies();

    return families.map((family) => FamilyModel.fromJson(family)).toList();
  }

  Future<List<FamilyDetailedModel>> getFamiliesInDetails() async {
    final families = await webServices.getFamiliesInDetails();
    return families
        .map((fammily) => FamilyDetailedModel.fromJson(fammily))
        .toList();
  }

  Future<FamilyDetailedModel> getFamiliyById(
    String familyId,
  ) async {
    final family = await webServices.getFamilyById(familyId);
    print("the family from the repos $family");
    return FamilyDetailedModel.fromJson(family[0]);
  }

  Future<void> addNewFamily(
    Map<String, dynamic> map,
  ) async {
    log("repo go to add new family");
    await webServices.addNewFamily(map);

    // return message;
  }

  Future<String> deleteFamily(
    String familyId,
  ) async {
    final message = await webServices.deleteFamily(familyId);
    return message;
  }
}
