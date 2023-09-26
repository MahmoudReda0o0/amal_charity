import '../models/families_model.dart';
import '../models/family_detailed.dart';
import '../web_services/families_web_services.dart';

class FamiliesRepo {
  final FamiliesWebServices webServices;
  FamiliesRepo(this.webServices);

  Future<List<FamilyModel>> getFamilies() async {
    final families = await webServices.getFamilies();

    return families.map((fammily) => FamilyModel.fromJson(fammily)).toList();
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
    return FamilyDetailedModel.fromJson(family[0]);
  }




   Future<String> addNewFamily(
    FamilyDetailedModel familyDetailedModel
  ) async {
    final message = await webServices.addNewFamily(familyDetailedModel);
    return message;
  }


  
   Future<String> deleteFamily(String familyId,) async {
    final message = await webServices.deleteFamily(familyId);
    return message;
  }
}
