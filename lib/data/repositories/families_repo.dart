import '../models/families_model.dart';
import '../web_services/families_web_services.dart';

class FamiliesRepo {
  final FamiliesWebServices webServices;
  FamiliesRepo(this.webServices);

  Future<List<dynamic>> getFamilies() async {
    print('#### get families from repository');
    final families = await webServices.getFamilies();
    print('#### success get families from webservices');
    return families as List<dynamic>;
  }
}
