import 'package:amal_charity/constants/constantValues.dart';
import 'package:amal_charity/main.dart';
import 'package:flutter/material.dart';

class ProviderAppData extends ChangeNotifier {
  bool adminMode = false;
  String adminPassword = '1032001';
  TextEditingController adminPassController = TextEditingController(text: '');

  void activeAdminMode() {
    if (adminPassController.text == adminPassword) {
      adminMode = true;
      notifyListeners();
    } else {
      adminMode = false;
      ScaffoldMessenger.of(navigationKey.currentContext!).showSnackBar(
        SnackBar(
          content: Text('Wrong Password You are not real Admin'),
        ),
      );
      notifyListeners();
    }
    adminPassController.clear();
  }

  void exitAdminMode() {
    adminMode = false;
    notifyListeners();
  }

  String familyAppBar = 'بيانات الأسرة';
  var pagedata;
  int drawerIndex = 0;
  String name = 'محمود رضا';
  int age = 22;
  String address =
      'المنصوره/الدراسات/امام معرض شباب التحرير/خلف النجمه الذهبيه';

  postData(String updatedData) {
    name = updatedData;
    notifyListeners();
  }

  SelectDrawerItem({required int selectedInsex}) {
    familyAppBar = PublicData.familyObject[selectedInsex];
    drawerIndex = selectedInsex;
    notifyListeners();
  }
}
