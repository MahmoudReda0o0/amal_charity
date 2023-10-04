import 'package:amal_charity/View/my_screens/Family/AdminFamilyPageForm.dart';
import 'package:amal_charity/View/my_screens/Family/FamilyPageForm.dart';
import 'package:amal_charity/constants/constantValues.dart';
import 'package:amal_charity/main.dart';
import 'package:flutter/material.dart';

class ProviderAppData extends ChangeNotifier {
  /// App VersionCode
  String versionCode = '0.2.6';

  /// Admin Mode Setting
  bool adminMode = false;
  bool editData = false;
  String adminPassword = '1032001';
  TextEditingController adminPassController = TextEditingController(text: '');
  void settingEditData() {
    editData = !editData;
    print(editData);
    notifyListeners();
  }

  void activeAdminMode() {
    if (adminPassController.text == adminPassword) {
      adminMode = true;
      editData = false;
      print('Open Admin Mode');
      Navigator.pushReplacement(
        navigationKey.currentContext!,
        MaterialPageRoute(
          builder: (context) => AdminPageForm(),
        ),
      );
      notifyListeners();
    } else {
      adminMode = false;
      editData = false;
      ScaffoldMessenger.of(navigationKey.currentContext!).showSnackBar(
        const SnackBar(
          content: Text('Get out You are not real Admin'),
        ),
      );
    }
    adminPassController.clear();
    notifyListeners();
  }

  void exitAdminMode() {
    adminMode = false;
    editData = false;
    notifyListeners();
    print('open family page form');
    Navigator.pushReplacement(
      navigationKey.currentContext!,
      MaterialPageRoute(
        builder: (context) => const FamilyPageForm(),
      ),
    );
  }

  /// App Data
  String familyAppBar = 'بيانات الأسرة';
  var pagedata;
  int scrollIndex = 0;
  String name = 'محمود رضا';
  int age = 22;
  String address =
      'المنصوره/الدراسات/امام معرض شباب التحرير/خلف النجمه الذهبيه';
  List<String> familyObject = [
    'بيانات الأسرة',
    'بيانات الوالدين',
    'بيانات الابناء',
    'بيانات الدخل والخرج',
    'بيانات الديون',
    'بيانات المنزل',
    'بيانات العلاج',
    'بيانات المدارس',
    'بيانات الجهاز'
  ];
  List<Color> buttonColor = List.generate(9, (index) => Colors.white);
  changeButtonColor() {
    buttonColor = List.generate(buttonColor.length, (index) => Colors.white);
    buttonColor[scrollIndex] = Colors.yellow;
    notifyListeners();
  }

  selectScrollButtonIndex({required int selectedInsex}) {
    familyAppBar = familyObject[selectedInsex];
    scrollIndex = selectedInsex;
    changeButtonColor();
    notifyListeners();
  }
}
