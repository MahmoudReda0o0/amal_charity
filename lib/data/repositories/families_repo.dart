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
    final families = await webServices.getFamilies();
    return families
        .map((fammily) => FamilyDetailedModel.fromJson(fammily))
        .toList();
  }
}
