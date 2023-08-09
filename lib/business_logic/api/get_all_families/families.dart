import 'package:flutter/material.dart';
import '../../../data/models/families_model.dart';
import '../../../data/repositories/families_repo.dart';

class FamiliesProvider extends ChangeNotifier {
  FamiliesRepo repo;
  String families = "";
  FamiliesProvider({required this.repo});

  void getAllFamilies() async {
    //do your work here
    List<dynamic> families = await repo.getFamilies();
    print('$families');
    notifyListeners();
  }
}
