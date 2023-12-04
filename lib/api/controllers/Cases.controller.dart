/// @author:         Nader Hany
/// @version:        1.2
/// @date:           27/11/2023
/// @file:           cases.model.dart
/// @description:    this will have controllers for the case model

import '../Models/Family.submodel.dart';
import '../Models/cases.model.dart';
import '../Models/children.submodel.dart';
import '../Models/financial.submodel.dart';
import '../Models/parents.submodel.dart';
import '../controllers/apiDeleters.controllers.dart';
import '../controllers/apiGetters.controllers.dart';
import '../controllers/apiPosters.controllers.dart';
import '../controllers/apiUpdaters.controllers.dart';
import '../utils.dart';

/// *************************** SingleCaseController ************************
class SingleCaseController {
  String caseId = '';
  late Case m_case;

  SingleCaseController({required this.caseId, required this.m_case});

  /// will initialize the case model by its id
  /// get case by id
  /// assign the case
  Future initializeCase() async {
    ApiGetterController mygetter = ApiGetterController();
    var mCase = await mygetter.getFullCasesByID(caseId); // map
    // print(mCase);
    List<Note> mmmNote = [];
    for (var element in mCase['Notes']) {
      mmmNote.add(Note(
          date: string2date(element['date']),
          details: element['details'],
          id: element['_id']));
    }
    m_case.id = caseId;
    m_case.familyInfo = FamilyInfo.fromMap(mCase['FamilyInfo']);
    m_case.husband = Husband.fromMap(mCase['Husband']);
    m_case.wife = Wife.fromMap(mCase['Wife']);
    m_case.children = Children.fromMap(mCase['Children']);
    m_case.income = Income.fromMap(mCase['Income']);
    m_case.expenses = Expenses.fromMap(mCase['Expenses']);
    m_case.bride = Bride.fromMap(mCase['Bride']);
    m_case.dept = Debt.fromMap(mCase['Debt']);
    m_case.houseInfo = HouseInfo.fromMap(mCase['HouseInfo']);
    m_case.medicine = Medicine.fromMap(mCase['Medicine']);
    m_case.notes = mmmNote;
    m_case.school = School.fromMap(mCase['School']);
    m_case.total = mCase['Total'];
    print("done");
  }

  /// will update the case model
  /// convert case to Map
  /// update case by id
  Future<bool> update() async {
    ///***********************children ************/
    List<Map<String, dynamic>> childs = [];
    for (var element in m_case.children.childInfo) {
      childs.add({
        "name": element.name,
        "age": element.age,
        "gender": (element.gender == Gender.male) ? "male" : "female",
        "string": element.string
      });
    }

    List<Map<String, dynamic>> childjobs = [];
    for (var i in m_case.income.childrenjob) {
      childjobs.add({"name": i.name, "info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> otherIncome = [];
    for (var i in m_case.income.other) {
      otherIncome.add({"name": i.name, "info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> otherExpense = [];
    for (var i in m_case.expenses.other) {
      otherExpense.add({"info": i.info, "price": i.price});
    }

    ///********************** loans ************/
    List<Map<String, dynamic>> deptLoans = [];
    for (var i in m_case.dept.loans) {
      deptLoans.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptFood = [];
    for (var i in m_case.dept.food) {
      deptFood.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptbrideStuff = [];
    for (var i in m_case.dept.brideStuff) {
      deptbrideStuff.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptHouseRent = [];
    for (var i in m_case.dept.houseRent) {
      deptHouseRent.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptMedicine = [];
    for (var i in m_case.dept.medicine) {
      deptMedicine.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptElecteric = [];
    for (var i in m_case.dept.electric) {
      deptElecteric.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptWater = [];
    for (var i in m_case.dept.water) {
      deptWater.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptGas = [];
    for (var i in m_case.dept.gas) {
      deptGas.add({"info": i.info, "price": i.price});
    }

    ///******* medicine *************/
    List<Map<String, dynamic>> medicneHusbnd = [];
    for (var i in m_case.medicine.husband.medicineList) {
      medicneHusbnd.add({"info": i.info, "concentration": i.concentration});
    }
    List<Map<String, dynamic>> medicneWife = [];
    for (var i in m_case.medicine.wife.medicineList) {
      medicneWife.add({"info": i.info, "concentration": i.concentration});
    }

    List<Map<String, dynamic>> medicneChildren = [];
    for (var i in m_case.medicine.children.medicineList) {
      medicneChildren.add({"info": i.info, "concentration": i.concentration});
    }

    ///************** schools *************/
    List<Map<String, dynamic>> schols = [];
    for (var i in m_case.school.children) {
      schols.add({"name": i.name, "educationLevel": i.educationLevel});
    }

    ///*************** Notes *************/
    List<Map<String, dynamic>> notes = [];
    for (var i in m_case.notes) {
      notes.add({"date": date2string(i.date), "details": i.details});
    }

    var templateObject = {
      "FamilyInfo": {
        "familyNO": m_case.familyInfo.familyNo,
        "familyAdress": m_case.familyInfo.familyAdress,
        "location": m_case.familyInfo.location,
        "familyBreadWinner": m_case.familyInfo.familyBreadWinner,
        "familyPercent": m_case.familyInfo.familyPercent,
        "familyClass": m_case.familyInfo.familyClass,
        "monthlyMoney": m_case.familyInfo.monthlyMoney,
        "sId": m_case.familyInfo.sId
      },
      "Husband": {
        "name": m_case.husband.name,
        "age": m_case.husband.age,
        "enableWork": m_case.husband.enableWork,
        "job": m_case.husband.job,
        "education": m_case.husband.education,
        "teleNumber": m_case.husband.teleNumber
      },
      "Wife": {
        "name": m_case.wife.name,
        "age": m_case.wife.age,
        "enableWork": m_case.wife.enableWork,
        "enableMarry": m_case.wife.enableMarry,
        "job": m_case.wife.job,
        "education": m_case.wife.education,
        "teleNumber": m_case.wife.teleNumber
      },
      "Children": {
        "childrenNumber": m_case.children.childrenNumber,
        "childInfo": childs
      },
      "Income": {
        "husbandJob": {
          "info": m_case.income.husbandJob.info,
          "price": m_case.income.husbandJob.price
        },
        "wifeJob": {
          "info": m_case.income.wifeJob.info,
          "price": m_case.income.wifeJob.price
        },
        "childrenjob": childjobs,
        "pension": {
          "info": m_case.income.pension.info,
          "price": m_case.income.pension.price
        },
        "otherCharitiesHelp": {
          "info": m_case.income.otherCharitiesHelp.info,
          "price": m_case.income.otherCharitiesHelp.price
        },
        "other": otherIncome
      },
      "Expenses": {
        "houseRent": m_case.expenses.houseRent,
        "basicNeed": {
          "electricity": m_case.expenses.water,
          "water": m_case.expenses.water,
          "gas": m_case.expenses.gas
        },
        "medicine": m_case.expenses.medicine,
        "food": {
          "info": m_case.expenses.food.info,
          "price": m_case.expenses.food.price
        },
        "other": otherExpense
      },
      "Debt": {
        "loans": deptLoans,
        "food": deptFood,
        "brideStuff": deptbrideStuff,
        "houseRent": deptHouseRent,
        "medicine": deptMedicine,
        "electeric": deptElecteric,
        "water": deptWater,
        "gas": deptGas
      },
      "HouseInfo": {
        "houseType": m_case.houseInfo.houseType,
        "monthlyRent": m_case.houseInfo.monthlyRent,
        "roomsNumber": m_case.houseInfo.roomsNumber,
        "blankets": {
          "familyHave": m_case.houseInfo.blankets.familyHave,
          "familyNeed": m_case.houseInfo.blankets.familyNeed,
          "familyTake": m_case.houseInfo.blankets.familyTake
        }
      },
      "Medicine": {
        "husband": {
          "medicineList": medicneHusbnd,
          "totalPrice": m_case.medicine.husband.totalPrice
        },
        "wife": {
          "medicineList": medicneWife,
          "totalPrice": m_case.medicine.wife.totalPrice
        },
        "children": {
          "name": "string1",
          "medicineList": medicneChildren,
          "totalPrice": m_case.medicine.children.totalPrice
        }
      },
      "Bride": {
        "weddingDate": date2string(m_case.bride.weddingDate),
        "brideType": m_case.bride.brideType,
        "brideDevices": {
          "fridge": m_case.bride.brideDevices.fridge,
          "washingMachine": m_case.bride.brideDevices.washingMachine,
          "cooker": m_case.bride.brideDevices.cooker,
          "kitchen": m_case.bride.brideDevices.kitchen
        }
      },
      "School": {"children": schols, "bagNumber": m_case.school.bagNumber},
      "Notes": notes,
      "Total": m_case.total
    };
    ApiUpdaterController upd = ApiUpdaterController();
    bool status = await upd.updateCase(m_case.id, templateObject);
    await initializeCase();
    return status;
  }

  /// will delete note by its id
  Future<bool> deleteNote(String noteID) async {
    ApiDeleterController myd = ApiDeleterController();

    bool status = await myd.deleteCaseNote(caseId, noteID);
    await initializeCase();
    return status;
  }

  /// will delete all notes
  Future<bool> deleteAllNote() async {
    ApiDeleterController mdlt = ApiDeleterController();
    bool status = await mdlt.deleteAllCaseNotes(caseId);
    await initializeCase();
    return status;
  }

  /// will add a new note
  /// convert noteDetails to a map
  /// add note by case id
  Future<bool> addNote(String noteDetails) async {
    ApiPosterController pst = ApiPosterController();
    var nt = {"note": noteDetails};
    bool status = await pst.postNote(nt, caseId);
    await initializeCase();
    return status;
  }
}

/// *************************** multiCaseController ************************
class MultiCaseController {
  List<ShortCase> casesShortList;

  MultiCaseController({required this.casesShortList});

  /// will get all cases
  /// get all casses
  /// return it
  Future<bool> getCases() async {
    ApiGetterController mgt = ApiGetterController();
    try {
      var obj = await mgt.getCasesShortList();
      for (var i in obj) {
        casesShortList.add(ShortCase(
            familyInfo: FamilyInfo.fromMap(i['FamilyInfo']),
            fatherPhone: i['fatherPhone'],
            motherPhone: i['motherPhone'],
            id: i['id']));
      }
      return true;
    } catch (e) {
      print('MultiCaseController->getCases():: couldnt get any cases??');
    }
    return false;
  }

  /// will remove specific case
  Future<bool> removeCase(String id) async {
    ApiDeleterController dltr = ApiDeleterController();
    bool status = await dltr.deleteCase(id);
    try {
      casesShortList.clear();
      await getCases();
    } catch (e) {
      print(
          "MultiCaseController->removeCase():: failed maybe no internet access .....");
    }
    return status;
  }

  /// will delete all cases
  Future<bool> removeAllCases() async {
    ApiDeleterController dlt = ApiDeleterController();
    bool st = await dlt.deleteAllCases();
    try {
      casesShortList.clear();
      await getCases();
    } catch (e) {
      print(
          "MultiCaseController->removeCase():: failed maybe no internet access .....");
    }
    return st;
  }

  /// will get cases by lication
  Future<bool> getCasesByLocation(String location) async {
    ApiGetterController mgt = ApiGetterController();
    try {
      var obj = await mgt.getCasesByLocation(location);
      // print(obj);
      for (var i in obj) {
        casesShortList.add(ShortCase(
            familyInfo: FamilyInfo.fromMap(i['FamilyInfo']),
            fatherPhone: i['Husband']['teleNumber'],
            motherPhone: i['Wife']['teleNumber'],
            // fatherPhone: "i['fatherPhone']",  // bug here
            // motherPhone: "i['motherPhone']",  // bug here
            id: i['_id']));
      }
      return true;
    } catch (e) {
      print('MultiCaseController->getCases():: couldnt get any cases?? $e');
    }
    return false;
  }

  /// will add a new case
  Future<bool> addCase(Case m_case) async {
    ///***********************children ************/
    List<Map<String, dynamic>> childs = [];
    for (var element in m_case.children.childInfo) {
      childs.add({
        "name": element.name,
        "age": element.age,
        "gender": (element.gender == Gender.male) ? "male" : "female",
        "string": element.string
      });
    }

    List<Map<String, dynamic>> childjobs = [];
    for (var i in m_case.income.childrenjob) {
      childjobs.add({"name": i.name, "info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> otherIncome = [];
    for (var i in m_case.income.other) {
      otherIncome.add({"name": i.name, "info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> otherExpense = [];
    for (var i in m_case.expenses.other) {
      otherExpense.add({"info": i.info, "price": i.price});
    }

    ///********************** loans ************/
    List<Map<String, dynamic>> deptLoans = [];
    for (var i in m_case.dept.loans) {
      deptLoans.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptFood = [];
    for (var i in m_case.dept.food) {
      deptFood.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptbrideStuff = [];
    for (var i in m_case.dept.brideStuff) {
      deptbrideStuff.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptHouseRent = [];
    for (var i in m_case.dept.houseRent) {
      deptHouseRent.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptMedicine = [];
    for (var i in m_case.dept.medicine) {
      deptMedicine.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptElecteric = [];
    for (var i in m_case.dept.electric) {
      deptElecteric.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptWater = [];
    for (var i in m_case.dept.water) {
      deptWater.add({"info": i.info, "price": i.price});
    }

    List<Map<String, dynamic>> deptGas = [];
    for (var i in m_case.dept.gas) {
      deptGas.add({"info": i.info, "price": i.price});
    }

    ///******* medicine *************/
    List<Map<String, dynamic>> medicneHusbnd = [];
    for (var i in m_case.medicine.husband.medicineList) {
      medicneHusbnd.add({"info": i.info, "concentration": i.concentration});
    }
    List<Map<String, dynamic>> medicneWife = [];
    for (var i in m_case.medicine.wife.medicineList) {
      medicneWife.add({"info": i.info, "concentration": i.concentration});
    }

    List<Map<String, dynamic>> medicneChildren = [];
    for (var i in m_case.medicine.children.medicineList) {
      medicneChildren.add({"info": i.info, "concentration": i.concentration});
    }

    ///************** schools *************/
    List<Map<String, dynamic>> schols = [];
    for (var i in m_case.school.children) {
      schols.add({"name": i.name, "educationLevel": i.educationLevel});
    }

    ///*************** Notes *************/
    List<Map<String, dynamic>> notes = [];
    for (var i in m_case.notes) {
      notes.add({"date": date2string(i.date), "details": i.details});
    }

    var templateObject = {
      "FamilyInfo": {
        "familyNO": m_case.familyInfo.familyNo,
        "familyAdress": m_case.familyInfo.familyAdress,
        "location": m_case.familyInfo.location,
        "familyBreadWinner": m_case.familyInfo.familyBreadWinner,
        "familyPercent": m_case.familyInfo.familyPercent,
        "familyClass": m_case.familyInfo.familyClass,
        "monthlyMoney": m_case.familyInfo.monthlyMoney,
        "sId": m_case.familyInfo.sId
      },
      "Husband": {
        "name": m_case.husband.name,
        "age": m_case.husband.age,
        "enableWork": m_case.husband.enableWork,
        "job": m_case.husband.job,
        "education": m_case.husband.education,
        "teleNumber": m_case.husband.teleNumber
      },
      "Wife": {
        "name": m_case.wife.name,
        "age": m_case.wife.age,
        "enableWork": m_case.wife.enableWork,
        "enableMarry": m_case.wife.enableMarry,
        "job": m_case.wife.job,
        "education": m_case.wife.education,
        "teleNumber": m_case.wife.teleNumber
      },
      "Children": {
        "childrenNumber": m_case.children.childrenNumber,
        "childInfo": childs
      },
      "Income": {
        "husbandJob": {
          "info": m_case.income.husbandJob.info,
          "price": m_case.income.husbandJob.price
        },
        "wifeJob": {
          "info": m_case.income.wifeJob.info,
          "price": m_case.income.wifeJob.price
        },
        "childrenjob": childjobs,
        "pension": {
          "info": m_case.income.pension.info,
          "price": m_case.income.pension.price
        },
        "otherCharitiesHelp": {
          "info": m_case.income.otherCharitiesHelp.info,
          "price": m_case.income.otherCharitiesHelp.price
        },
        "other": otherIncome
      },
      "Expenses": {
        "houseRent": m_case.expenses.houseRent,
        "basicNeed": {
          "electricity": m_case.expenses.water,
          "water": m_case.expenses.water,
          "gas": m_case.expenses.gas
        },
        "medicine": m_case.expenses.medicine,
        "food": {
          "info": m_case.expenses.food.info,
          "price": m_case.expenses.food.price
        },
        "other": otherExpense
      },
      "Debt": {
        "loans": deptLoans,
        "food": deptFood,
        "brideStuff": deptbrideStuff,
        "houseRent": deptHouseRent,
        "medicine": deptMedicine,
        "electeric": deptElecteric,
        "water": deptWater,
        "gas": deptGas
      },
      "HouseInfo": {
        "houseType": m_case.houseInfo.houseType,
        "monthlyRent": m_case.houseInfo.monthlyRent,
        "roomsNumber": m_case.houseInfo.roomsNumber,
        "blankets": {
          "familyHave": m_case.houseInfo.blankets.familyHave,
          "familyNeed": m_case.houseInfo.blankets.familyNeed,
          "familyTake": m_case.houseInfo.blankets.familyTake
        }
      },
      "Medicine": {
        "husband": {
          "medicineList": medicneHusbnd,
          "totalPrice": m_case.medicine.husband.totalPrice
        },
        "wife": {
          "medicineList": medicneWife,
          "totalPrice": m_case.medicine.wife.totalPrice
        },
        "children": {
          "name": "string1",
          "medicineList": medicneChildren,
          "totalPrice": m_case.medicine.children.totalPrice
        }
      },
      "Bride": {
        "weddingDate": date2string(m_case.bride.weddingDate),
        "brideType": m_case.bride.brideType,
        "brideDevices": {
          "fridge": m_case.bride.brideDevices.fridge,
          "washingMachine": m_case.bride.brideDevices.washingMachine,
          "cooker": m_case.bride.brideDevices.cooker,
          "kitchen": m_case.bride.brideDevices.kitchen
        }
      },
      "School": {"children": schols, "bagNumber": m_case.school.bagNumber},
      "Notes": notes,
      "Total": m_case.total
    };

    ApiPosterController pstr = ApiPosterController();
    bool status = await pstr.postCase(templateObject);
    bool st = await getCases();

    return (status && st);
  }
}
