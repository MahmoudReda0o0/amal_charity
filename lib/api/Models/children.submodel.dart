import '../utils.dart';

/// @author:         Nader Hany
/// @version:        1.2
/// @date:           26/11/2023
/// @description:    this will be a submodel model for parents

enum Gender { male, female }

/// ******************* ChildInfo *************************
class ChildInfo {
  String name = '', string = '';
  int age = 0;
  Gender gender = Gender.male;

  ChildInfo({this.name = '', this.age = 0, this.gender = Gender.male});

  // Constructor from Map
  ChildInfo.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? '';
    age = map['age'] ?? 0;
    string = map['string'] ?? '';
    gender = (map['gender'].toString().contains('male'))
        ? Gender.male
        : Gender.female;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "name": name,
      "string": string,
      "age": age,
      "gender": (gender == Gender.male) ? "male" : "female"
    };
    return tmp;
  }
}

/// ******************* Children *************************
class Children {
  int childrenNumber = 0;
  List<ChildInfo> childInfo = List.empty(growable: true);

  Children({this.childrenNumber = 0, required this.childInfo});
  Children.fromMap(Map<String, dynamic> map) {
    try {
      childrenNumber = map['childrenNumber'];
      for (var child in map['childInfo']) {
        childInfo.add(ChildInfo.fromMap(child));
      }
    } catch (e) {
      print(
          'Children->fromMap():: failed to initialize member varibales.... $e');
    }
  }

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> aaa = [];
    for (var i in childInfo) {
      aaa.add(i.toMap());
    }
    Map<String, dynamic> tmp = {
      "childrenNumber": childrenNumber,
      "childInfo": aaa,
    };
    return tmp;
  }
}

/// ***************** BrideDevices ********************
class BrideDevices {
  bool fridge = false, washingMachine = false, cooker = false, kitchen = false;

  BrideDevices(
      {this.fridge = false,
      this.washingMachine = false,
      this.cooker = false,
      this.kitchen = false});

  BrideDevices.fromMap(Map<String, dynamic> map) {
    try {
      fridge = map['fridge'];
      washingMachine = map['washingMachine'];
      cooker = map['cooker'];
      kitchen = map['kitchen'];
    } catch (e) {
      print(
          'BrideDevices->fromMap():: failed to initialize member varibales.... $e');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "fridge": fridge,
      "washingMachine": washingMachine,
      "cooker": cooker,
      "kitchen": kitchen
    };
    return tmp;
  }
}

/// ******************* Bride *************************
class Bride {
  late DateTime weddingDate;
  late String brideType = '';
  late BrideDevices brideDevices;

  Bride(
      {required this.weddingDate,
      this.brideType = '',
      required this.brideDevices});
  Bride.fromMap(Map<String, dynamic> map) {
    try {
      weddingDate = string2date(map['weddingDate']);
      brideType = map['brideType'];
      brideDevices = BrideDevices.fromMap(map['brideDevices']);
    } catch (e) {
      print('Bride->fromMap():: failed to initialize member varibales.... $e');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "weddingDate": date2string(weddingDate),
      "brideType": brideType,
      "brideDevices": brideDevices.toMap()
    };
    return tmp;
  }
}

/// ******************* SchoolChildInfo *************************
class SchoolChildInfo {
  String name = '', educationLevel = '';

  SchoolChildInfo({this.name = '', this.educationLevel = ''});

  SchoolChildInfo.fromMap(Map<String, dynamic> map) {
    try {
      name = map['name'];
      educationLevel = map['educationLevel'];
    } catch (e) {
      print(
          'SchoolChildInfo->fromMap():: failed to initialize member varibales.... $e');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "name": name,
      "educationLevel": educationLevel,
    };
    return tmp;
  }
}

/// ******************* School *************************
class School {
  int bagNumber = 0;
  List<SchoolChildInfo> children=List.empty(growable: true);
  School({this.bagNumber = 0, required this.children});

  School.fromMap(Map<String, dynamic> map) {
    try {
      bagNumber = map['bagNumber'];
      for (var child in map['children']) {
        children.add(SchoolChildInfo.fromMap(child));
      }
    } catch (e) {
      print('School->fromMap():: failed to initialize member varibales.... $e');
    }
  }

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> chlds = [];
    for (var i in children) {
      chlds.add(i.toMap());
    }
    Map<String, dynamic> tmp = {
      "bagNumber": bagNumber,
      "children": chlds,
    };
    return tmp;
  }
}
