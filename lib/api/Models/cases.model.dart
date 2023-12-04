/// @author:         Nader Hany
/// @version:        1.2
/// @date:           26/11/2023
/// @file:           cases.model.dart
/// @description:    this will be a model that handel all database requests

import 'Family.submodel.dart';
import 'children.submodel.dart';
import 'financial.submodel.dart';
import 'parents.submodel.dart';
import '../utils.dart';

/// *********************** Note ********************************
class Note {
  late DateTime date;
  String details = '';
  String id = '';
  Note({required this.date, this.id = '', required this.details});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "id": id,
      "date": date2string(date),
      "details": details,
    };
    return tmp;
  }
}

/// *********************** Case ********************************
class Case {
  String id = "";
  late FamilyInfo familyInfo;
  late Husband husband;
  late Wife wife;
  late Children children;
  late Income income;
  late Expenses expenses;
  late Debt dept;
  late HouseInfo houseInfo;
  late Medicine medicine;
  late Bride bride;
  late School school;
  List<Note> notes = List.empty(growable: true);
  late int total;

  Case(
      {required this.id,
      required this.familyInfo,
      required this.husband,
      required this.wife,
      required this.children,
      required this.income,
      required this.expenses,
      required this.bride,
      required this.dept,
      required this.houseInfo,
      required this.medicine,
      required this.notes,
      required this.school,
      required this.total});
  Case.defaultValue();
  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> tmp2 = [];
    for (var n in notes) {
      tmp2.add(n.toMap());
    }
    Map<String, dynamic> tmp = {
      "id": id,
      "familyInfo": familyInfo.toMap(),
      "husband": husband.toMap(),
      "wife": wife,
      "children": children,
      "income": income,
      "expenses": expenses,
      "bride": bride,
      "dept": dept,
      "houseInfo": houseInfo,
      "medicine": medicine,
      "notes": tmp2,
      "total": total,
    };
    return tmp;
  }
}

/// ***************** ShortCase *************************
class ShortCase {
  late String id;
  late String fatherPhone;
  late String motherPhone;
  late FamilyInfo familyInfo;
  ShortCase(
      {required this.familyInfo,
      required this.fatherPhone,
      required this.motherPhone,
      required this.id});
}

// /// ***************** Cases *************************
// class Cases {
//   late List<Case> full_cases;
//   late List<ShortCase> short_cases;
// }

