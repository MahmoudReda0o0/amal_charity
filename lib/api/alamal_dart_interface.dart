/// @author:         Nader Hany
/// @version:        1.2
/// @date:           29/11/2023
/// @file:           alamal_dart_interface/lib/api/alamal_dart_interface.dart
/// @description:    this will handel all GET requests from the api

import 'Models/Family.submodel.dart';
import 'Models/cases.model.dart';
import 'Models/children.submodel.dart';
import 'Models/financial.submodel.dart';
import 'Models/parents.submodel.dart';
import 'controllers/Cases.controller.dart';
import 'utils.dart';




/// ********* Multicase Controller **************
// test success
// ignore: non_constant_identifier_names
Future test_addCase() async {
  Case mycase = Case(
      id: "",
      familyInfo: FamilyInfo(
          familyAdress: "22222222222222222222222",
          familyBreadWinner: "",
          familyClass: "",
          familyNo: 1,
          familyPercent: 22,
          location: "Mansoura",
          monthlyMoney: 56,
          sId: ""),
      husband: Husband(
          age: 22,
          education: "",
          enableWork: true,
          job: "",
          name: "",
          teleNumber: ""),
      wife: Wife(
          age: 22,
          education: "",
          enableWork: true,
          job: "",
          name: "",
          teleNumber: ""),
      children: Children(
          childInfo: [ChildInfo(age: 22, gender: Gender.male, name: "")]),
      income: Income(
          husbandJob: JobInfo(info: "", price: 22),
          wifeJob: JobInfo(info: "", price: 22),
          pension: JobInfo(info: "", price: 22),
          otherCharitiesHelp: JobInfo(info: "", price: 22),
          other: [JobInfo(info: "", price: 22)],
          childrenjob: [JobInfo(info: "", price: 22)]),
      expenses: Expenses(
          food: JobInfo(info: "", price: 22),
          other: [JobInfo(info: "", price: 22)]),
      bride: Bride(
          weddingDate: DateTime.now(),
          brideDevices: BrideDevices(
              cooker: true,
              fridge: false,
              kitchen: true,
              washingMachine: false)),
      dept: Debt(
          loans: [JobInfo(info: "", price: 22)],
          food: [JobInfo(info: "", price: 22)],
          brideStuff: [JobInfo(info: "", price: 22)],
          electric: [JobInfo(info: "", price: 22)],
          gas: [JobInfo(info: "", price: 22)],
          houseRent: [JobInfo(info: "", price: 22)],
          medicine: [JobInfo(info: "", price: 22)],
          water: [JobInfo(info: "", price: 22)]),
      houseInfo: HouseInfo(
          blankets: Blankts(familyHave: 1, familyNeed: 2, familyTake: 3),
          houseType: "",
          monthlyRent: 25,
          roomsNumber: 2),
      medicine: Medicine(
          husband: SingleMedicine(
              medicineList: [Med(info: "info", concentration: 1)],
              totalPrice: 15),
          wife: SingleMedicine(
              medicineList: [Med(info: "info", concentration: 1)],
              totalPrice: 15),
          children:
              ChildSingleMedicine(name: "name", medicineList: [Med(info: "info", concentration: 5)], totalPrice: 20)),
      notes: [Note(date: DateTime.now(), details: "details")],
      school: School(children: [SchoolChildInfo(educationLevel: "", name: "ahmed")], bagNumber: 1),
      total: 5);
  List<ShortCase> mycases = [];
  MultiCaseController myController =
      MultiCaseController(casesShortList: mycases);
  bool st = await myController.addCase(mycase);
  if (st == true) {
    print("success");
    displayShortCaseList(mycases);
  }
}

/// test success
//ignore: non_constant_identifier_names
Future test_getCases() async {
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  if (st) {
    print("success");
    displayShortCaseList(myShortCases);
  }
}

// test success
// ignore: non_constant_identifier_names
Future test_getCasesByLocation() async {
  print("*************** test_getCasesByLocation *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCasesByLocation("Mansoura");
  if (st) {
    print("success");
    // print(myShortCases);
    displayShortCaseList(myShortCases);
  }
}

// test success
// ignore: non_constant_identifier_names
Future test_removeCase() async {
  print("*************** test_removeCase *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  print("*************** before *************************");
  if (st) {
    print("success");
    displayShortCaseList(myShortCases);
  }
  print("*************** after *************************");
  if (myShortCases.isNotEmpty) {
    st = await mcases.removeCase(myShortCases[0].id);
    if (st) {
      print("success");
      displayShortCaseList(myShortCases);
    }
  }
}

// test success
// ignore: non_constant_identifier_names
Future test_removeAllCase() async {
  print("*************** test_removeAllCase *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  print("*************** before *************************");
  if (st) {
    print("success");
    displayShortCaseList(myShortCases);
  }
  print("*************** after *************************");
  if (myShortCases.isNotEmpty) {
    st = await mcases.removeAllCases();
    if (st) {
      print("success");
      displayShortCaseList(myShortCases);
    }
  }
}

/// ********* SingleCase Controller **************

// test success
// ignore: non_constant_identifier_names
Future test_getOneCase() async {
  print("*************** test_getOneCase *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  if (st) {
    print("success");
  }
  late Case caseModel = Case.defaultValue();
  SingleCaseController sctroller =
      SingleCaseController(caseId: myShortCases[0].id, m_case: caseModel);
  await sctroller.initializeCase();
  print("**************************************************************");
  print(caseModel.toMap());
  print("**************************************************************");
}

// test success
// ignore: non_constant_identifier_names
Future test_updateCase() async {
  print("*************** test_updateCase *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  if (st) {
    print("success");
  }
  late Case caseModel = Case.defaultValue();
  SingleCaseController sctroller =
      SingleCaseController(caseId: myShortCases[0].id, m_case: caseModel);
  await sctroller.initializeCase();
  print("************************** Before *************************");
  print(caseModel.toMap());
  print("**************************************************************");
  print("**************************** After ***************************");
  caseModel.husband.name = "test_update";
  caseModel.familyInfo.familyAdress = "test_update";
  caseModel.bride.weddingDate = DateTime(1999);
  st = await sctroller.update();
  if (st) {
    print(caseModel.toMap());
  }
  print("**************************************************************");
}

// test success
// ignore: non_constant_identifier_names
Future test_addNote() async {
  print("*************** test_addNote *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  if (st) {
    print("success");
  }
  late Case caseModel = Case.defaultValue();
  SingleCaseController sctroller =
      SingleCaseController(caseId: myShortCases[0].id, m_case: caseModel);
  await sctroller.initializeCase();
  st = await sctroller.addNote("testing note");
  print("**************************************************************");
  print(caseModel.toMap());
  print("**************************************************************");
}

// test success
// ignore: non_constant_identifier_names
Future test_updateNote() async {
  print("*************** test_updateNote *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  if (st) {
    print("success");
  }
  late Case caseModel = Case.defaultValue();
  SingleCaseController sctroller =
      SingleCaseController(caseId: myShortCases[0].id, m_case: caseModel);
  await sctroller.initializeCase();
  print("************************ Before ****************************");
  print(caseModel.toMap());
  print("**************************************************************");
  if (caseModel.notes.isNotEmpty) {
    caseModel.notes[0].details = "test update note details";
    caseModel.notes[0].date = string2date("2029/2/22");
    sctroller.update();
  }
  print("************************** After ***************************");
  print(caseModel.toMap());
  print("**************************************************************");
}

// test success
// ignore: non_constant_identifier_names
Future test_deleteNote() async {
  print("*************** test_deleteNote *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  if (st) {
    print("success");
  }
  late Case caseModel = Case.defaultValue();
  SingleCaseController sctroller =
      SingleCaseController(caseId: myShortCases[0].id, m_case: caseModel);
  await sctroller.initializeCase();
  print("************************ Before ****************************");
  print(caseModel.toMap());
  print("**************************************************************");
  st = await sctroller.deleteNote(caseModel.notes[0].id); // remove testing note
  print("*********************** After ****************************");
  print(caseModel.toMap());
  print("**************************************************************");
}

// test success
// ignore: non_constant_identifier_names
Future test_deleteAllNote() async {
  print("*************** test_deleteAllNote *************************");
  List<ShortCase> myShortCases = [];
  MultiCaseController mcases =
      MultiCaseController(casesShortList: myShortCases);
  bool st = await mcases.getCases();
  if (st) {
    print("success");
  }
  late Case caseModel = Case.defaultValue();
  SingleCaseController sctroller =
      SingleCaseController(caseId: myShortCases[0].id, m_case: caseModel);
  await sctroller.initializeCase();
  print("************************ Before ****************************");
  print(caseModel.toMap());
  print("**************************************************************");
  st = await sctroller.deleteAllNote();
  print("*********************** After ****************************");
  print(caseModel.toMap());
  print("**************************************************************");
}

void hellohttp() async {
  // var response = await http.get(Uri.parse('https://alamalcharity.onrender.com/cases'));

  // // Check if the request was successful (status code 200)
  // if (response.statusCode == 200) {
  //   print('Response data: ${response.body}');
  // } else {
  //   print('Failed to fetch data. Status code: ${response.statusCode}');
  // }

  // var object = {
  //   "FamilyInfo": {
  //     "familyNO": 3,
  //     "familyAdress": "Nader hany 222222222222",
  //     "location": "cairo",
  //     "familyBreadWinner": "Nader Hany description to Nader Hany",
  //     "familyPercent": 0.84,
  //     "familyClass": "A",
  //     "monthlyMoney": 1000,
  //     "sId": "id"
  //   },
  //   "Husband": {
  //     "name": "str",
  //     "age": 100,
  //     "enableWork": true,
  //     "job": "str",
  //     "education": "str",
  //     "teleNumber": "str"
  //   },
  //   "Wife": {
  //     "name": "str",
  //     "age": 100,
  //     "enableWork": false,
  //     "enableMarry": true,
  //     "job": "str",
  //     "education": "str",
  //     "teleNumber": "str"
  //   },
  //   "Children": {
  //     "childrenNumber": 100,
  //     "childInfo": [
  //       {"name": "str", "age": 100, "gender": "str", "string": "str"}
  //     ]
  //   },
  //   "Income": {
  //     "husbandJob": {"info": "str", "price": 100},
  //     "wifeJob": {"info": "str", "price": 100},
  //     "childrenjob": [
  //       {"name": "str", "info": "str", "price": 100}
  //     ],
  //     "pension": {"info": "str", "price": 100},
  //     "otherCharitiesHelp": {"info": "str", "price": 400},
  //     "other": [
  //       {"info": "str", "price": 500}
  //     ]
  //   },
  //   "Expenses": {
  //     "houseRent": 100,
  //     "basicNeed": {"electricity": 1000, "water": 1000, "gas": 1000},
  //     "medicine": 100,
  //     "food": {"info": "str", "price": 100},
  //     "other": [
  //       {"info": "str", "price": 100}
  //     ]
  //   },
  //   "Debt": {
  //     "loans": [
  //       {"info": "str", "price": 100}
  //     ],
  //     "food": [
  //       {"info": "str", "price": 100}
  //     ],
  //     "brideStuff": [
  //       {"info": "str", "price": 100}
  //     ],
  //     "houseRent": [
  //       {"info": "str", "price": 55}
  //     ],
  //     "medicine": [
  //       {"info": "str", "price": 95}
  //     ],
  //     "electeric": [
  //       {"info": "str", "price": 65}
  //     ],
  //     "water": [
  //       {"info": "str", "price": 14}
  //     ],
  //     "gas": [
  //       {"info": "str", "price": 1000}
  //     ]
  //   },
  //   "HouseInfo": {
  //     "houseType": "str",
  //     "monthlyRent": 20,
  //     "roomsNumber": 10,
  //     "blankets": {"familyHave": 15, "familyNeed": 42, "familyTake": 30}
  //   },
  //   "Medicine": {
  //     "husband": {
  //       "medicineList": [
  //         {"info": "{ type: String 1}", "concentration": 55},
  //         {"info": "{ type: String 3}", "concentration": 55},
  //         {"info": "{ type: String 2}", "concentration": 547}
  //       ],
  //       "totalPrice": 22
  //     },
  //     "wife": {
  //       "medicineList": [
  //         {"info": "{ type: String 1}", "concentration": 55},
  //         {"info": "{ type: String 3}", "concentration": 55},
  //         {"info": "{ type: String 2}", "concentration": 547}
  //       ],
  //       "totalPrice": 154
  //     },
  //     "children": {
  //       "name": "string1",
  //       "medicineList": [
  //         {"info": "{ type: String 1}", "concentration": 25},
  //         {"info": "{ type: String 3}", "concentration": 27},
  //         {"info": "{ type: String 2}", "concentration": 24}
  //       ],
  //       "totalPrice": 100
  //     }
  //   },
  //   "Bride": {
  //     "weddingDate": "string1",
  //     "brideType": "string1",
  //     "brideDevices": {
  //       "fridge": true,
  //       "washingMachine": false,
  //       "cooker": true,
  //       "kitchen": true
  //     }
  //   },
  //   "School": {
  //     "children": [
  //       {"name": "string1", "educationLevel": "string1"},
  //       {"name": "string2", "educationLevel": "string2"},
  //       {"name": "string3", "educationLevel": "string3"}
  //     ],
  //     "bagNumber": 15
  //   },
  //   "Notes": [
  //     {"date": "15/10/2023", "details": "note 1"},
  //     {"date": "11/10/2023", "details": "note 1"},
  //     {"date": "15/10/2023", "details": "note 2"},
  //     {"date": "11/10/2023", "details": "note 2"},
  //     {"date": "15/10/2023", "details": "note 3"},
  //     {"date": "11/10/2023", "details": "note 3"}
  //   ],
  //   "Total": 11500
  // };

  // var x = await ApiPosterController.postCase(object);
  // print(x);
  // print("************************************************");

  // var obj = {"note": "hello this is nader template"};
  // var y = await ApiPosterController.postNote(obj, "65645af14a0c3b8b35cca235");
  // print(y);
  // print("************************************************");

  // var response =
  //     await http.get(Uri.parse('https://alamalcharity.onrender.com/cases/65645af14a0c3b8b35cca235'));
  // if (response.statusCode == 200) {
  //   // print('Response data: ${response.body}');
  //   var jsonResponse = json.decode(response.body);
  //   print(jsonResponse['notes']);
  // } else {
  //   print('Failed to fetch data. Status code: ${response.statusCode}');
  // }

  // ApiGetterController.getCasesShortList();
  // Tst mu = Tst();
  // print(mu.aa);
  // ctrl myctry = ctrl(mm: mu);
  // myctry.mdfy();
  // print(mu.aa);
  // mu.aa = "hello aha";
  // print(myctry.mm.aa);
}
