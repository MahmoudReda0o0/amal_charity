// class FamilyDataModel {
//   String? sId;
//   FamilyInfo? familyInfo;
//   Husband? husband;
//   Husband? wife;
//   Children? children;
//   Income? income;
//   Expenses? expenses;
//   Debt? debt;
//   HouseInfo? houseInfo;
//   HusbandJob? medicine;
//   Bride? bride;
//   School? school;
//   int? total;
//   int? iV;
//
//   FamilyDataModel(
//       {this.sId,
//         this.familyInfo,
//         this.husband,
//         this.wife,
//         this.children,
//         this.income,
//         this.expenses,
//         this.debt,
//         this.houseInfo,
//         this.medicine,
//         this.bride,
//         this.school,
//         this.total,
//         this.iV});
//
//   FamilyDataModel.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     familyInfo = json['FamilyInfo'] != null
//         ? new FamilyInfo.fromJson(json['FamilyInfo'])
//         : null;
//     husband =
//     json['Husband'] != null ? new Husband.fromJson(json['Husband']) : null;
//     wife = json['Wife'] != null ? new Husband.fromJson(json['Wife']) : null;
//     children = json['Children'] != null
//         ? new Children.fromJson(json['Children'])
//         : null;
//     income =
//     json['Income'] != null ? new Income.fromJson(json['Income']) : null;
//     expenses = json['Expenses'] != null
//         ? new Expenses.fromJson(json['Expenses'])
//         : null;
//     debt = json['Debt'] != null ? new Debt.fromJson(json['Debt']) : null;
//     houseInfo = json['HouseInfo'] != null
//         ? new HouseInfo.fromJson(json['HouseInfo'])
//         : null;
//     medicine = json['Medicine'] != null
//         ? new HusbandJob.fromJson(json['Medicine'])
//         : null;
//     bride = json['Bride'] != null ? new Bride.fromJson(json['Bride']) : null;
//     school =
//     json['School'] != null ? new School.fromJson(json['School']) : null;
//     total = json['Total'];
//     iV = json['__v'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     if (this.familyInfo != null) {
//       data['FamilyInfo'] = this.familyInfo!.toJson();
//     }
//     if (this.husband != null) {
//       data['Husband'] = this.husband!.toJson();
//     }
//     if (this.wife != null) {
//       data['Wife'] = this.wife!.toJson();
//     }
//     if (this.children != null) {
//       data['Children'] = this.children!.toJson();
//     }
//     if (this.income != null) {
//       data['Income'] = this.income!.toJson();
//     }
//     if (this.expenses != null) {
//       data['Expenses'] = this.expenses!.toJson();
//     }
//     if (this.debt != null) {
//       data['Debt'] = this.debt!.toJson();
//     }
//     if (this.houseInfo != null) {
//       data['HouseInfo'] = this.houseInfo!.toJson();
//     }
//     if (this.medicine != null) {
//       data['Medicine'] = this.medicine!.toJson();
//     }
//     if (this.bride != null) {
//       data['Bride'] = this.bride!.toJson();
//     }
//     if (this.school != null) {
//       data['School'] = this.school!.toJson();
//     }
//     data['Total'] = this.total;
//     data['__v'] = this.iV;
//     return data;
//   }
// }
//
// class FamilyInfo {
//   int? familyNO;
//   String? familyAdress;
//   String? location;
//   String? familyBreadWinner;
//   double? familyPercent;
//   String? familyClass;
//   int? monthlyMoney;
//   String? sId;
//
//
//   FamilyInfo(
//       {this.familyNO,
//         this.familyAdress,
//         this.location,
//         this.familyBreadWinner,
//         this.familyPercent,
//         this.familyClass,
//         this.monthlyMoney,
//         this.sId,
//         });
//
//   FamilyInfo.fromJson(Map<String, dynamic> json) {
//     familyNO = json['familyNO'];
//     familyAdress = json['familyAdress'];
//     location = json['location'];
//     familyBreadWinner = json['familyBreadWinner'];
//     familyPercent = json['familyPercent'];
//     familyClass = json['familyClass'];
//     monthlyMoney = json['monthlyMoney'];
//     sId = json['sId'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['familyNO'] = this.familyNO;
//     data['familyAdress'] = this.familyAdress;
//     data['location'] = this.location;
//     data['familyBreadWinner'] = this.familyBreadWinner;
//     data['familyPercent'] = this.familyPercent;
//     data['familyClass'] = this.familyClass;
//     data['monthlyMoney'] = this.monthlyMoney;
//     data['sId'] = this.sId;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Husband {
//   String? name;
//   int? age;
//   bool? enableWork;
//   String? job;
//   String? education;
//   String? teleNumber;
//   String? sId;
//
//   Husband(
//       {this.name,
//         this.age,
//         this.enableWork,
//         this.job,
//         this.education,
//         this.teleNumber,
//         this.sId});
//
//   Husband.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     age = json['age'];
//     enableWork = json['enableWork'];
//     job = json['job'];
//     education = json['education'];
//     teleNumber = json['teleNumber'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['age'] = this.age;
//     data['enableWork'] = this.enableWork;
//     data['job'] = this.job;
//     data['education'] = this.education;
//     data['teleNumber'] = this.teleNumber;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Wife {
//   String? name;
//   int? age;
//   bool? enableWork;
//   bool? enableMarry;
//   String? job;
//   String? education;
//   String? teleNumber;
//   String? sId;
//
//   Wife(
//       {this.name,
//         this.age,
//         this.enableWork,
//         this.enableMarry,
//         this.job,
//         this.education,
//         this.teleNumber,
//         this.sId});
//
//   Wife.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     age = json['age'];
//     enableWork = json['enableWork'];
//     enableMarry = json['enableMarry'];
//     job = json['job'];
//     education = json['education'];
//     teleNumber = json['teleNumber'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['age'] = this.age;
//     data['enableWork'] = this.enableWork;
//     data['enableMarry'] = this.enableMarry;
//     data['job'] = this.job;
//     data['education'] = this.education;
//     data['teleNumber'] = this.teleNumber;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Children {
//   int? childrenNumber;
//   List<ChildInfo>? childInfo;
//   String? sId;
//
//   Children({this.childrenNumber, this.childInfo, this.sId});
//
//   Children.fromJson(Map<String, dynamic> json) {
//     childrenNumber = json['childrenNumber'];
//     if (json['childInfo'] != null) {
//       childInfo = <ChildInfo>[];
//       json['childInfo'].forEach((v) {
//         childInfo!.add(new ChildInfo.fromJson(v));
//       });
//     }
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['childrenNumber'] = this.childrenNumber;
//     if (this.childInfo != null) {
//       data['childInfo'] = this.childInfo!.map((v) => v.toJson()).toList();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class ChildInfo {
//   String? name;
//   int? age;
//   String? gender;
//   String? string;
//   String? sId;
//
//   ChildInfo({this.name, this.age, this.gender, this.string, this.sId});
//
//   ChildInfo.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     age = json['age'];
//     gender = json['gender'];
//     string = json['string'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['age'] = this.age;
//     data['gender'] = this.gender;
//     data['string'] = this.string;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Income {
//   HusbandJob? husbandJob;
//   HusbandJob? wifeJob;
//   List<Childrenjob>? childrenjob;
//   HusbandJob? pension;
//   HusbandJob? otherCharitiesHelp;
//   List? other;
//   String? sId;
//
//   Income(
//       {this.husbandJob,
//         this.wifeJob,
//         this.childrenjob,
//         this.pension,
//         this.otherCharitiesHelp,
//         this.other,
//         this.sId});
//
//   Income.fromJson(Map<String, dynamic> json) {
//     husbandJob = json['husbandJob'] != null
//         ? new HusbandJob.fromJson(json['husbandJob'])
//         : null;
//     wifeJob = json['wifeJob'] != null
//         ? new HusbandJob.fromJson(json['wifeJob'])
//         : null;
//     if (json['childrenjob'] != null) {
//       childrenjob = <Childrenjob>[];
//       json['childrenjob'].forEach((v) {
//         childrenjob!.add(new Childrenjob.fromJson(v));
//       });
//     }
//     pension = json['pension'] != null
//         ? new HusbandJob.fromJson(json['pension'])
//         : null;
//     otherCharitiesHelp = json['otherCharitiesHelp'] != null
//         ? new HusbandJob.fromJson(json['otherCharitiesHelp'])
//         : null;
//     if (json['other'] != null) {
//       other = <Other>[];
//       json['other'].forEach((v) {
//         other!.add(new Other.fromJson(v));
//       });
//     }
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.husbandJob != null) {
//       data['husbandJob'] = this.husbandJob!.toJson();
//     }
//     if (this.wifeJob != null) {
//       data['wifeJob'] = this.wifeJob!.toJson();
//     }
//     if (this.childrenjob != null) {
//       data['childrenjob'] = this.childrenjob!.map((v) => v.toJson()).toList();
//     }
//     if (this.pension != null) {
//       data['pension'] = this.pension!.toJson();
//     }
//     if (this.otherCharitiesHelp != null) {
//       data['otherCharitiesHelp'] = this.otherCharitiesHelp!.toJson();
//     }
//     if (this.other != null) {
//       data['other'] = this.other!.map((v) => v.toJson()).toList();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class HusbandJob {
//   String? info;
//   int? price;
//   String? sId;
//
//   HusbandJob({this.info, this.price, this.sId});
//
//   HusbandJob.fromJson(Map<String, dynamic> json) {
//     info = json['info'];
//     price = json['price'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['info'] = this.info;
//     data['price'] = this.price;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Childrenjob {
//   String? name;
//   String? info;
//   int? price;
//   String? sId;
//
//   Childrenjob({this.name, this.info, this.price, this.sId});
//
//   Childrenjob.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     info = json['info'];
//     price = json['price'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['info'] = this.info;
//     data['price'] = this.price;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Expenses {
//   int? houseRent;
//   BasicNeed? basicNeed;
//   int? medicine;
//   HusbandJob? food;
//   List<Other>? other;
//   String? sId;
//
//   Expenses(
//       {this.houseRent,
//         this.basicNeed,
//         this.medicine,
//         this.food,
//         this.other,
//         this.sId});
//
//   Expenses.fromJson(Map<String, dynamic> json) {
//     houseRent = json['houseRent'];
//     basicNeed = json['basicNeed'] != null
//         ? new BasicNeed.fromJson(json['basicNeed'])
//         : null;
//     medicine = json['medicine'];
//     food = json['food'] != null ? new HusbandJob.fromJson(json['food']) : null;
//     if (json['other'] != null) {
//       other = <Other>[];
//       json['other'].forEach((v) {
//         other!.add(new Other.fromJson(v));
//       });
//     }
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['houseRent'] = this.houseRent;
//     if (this.basicNeed != null) {
//       data['basicNeed'] = this.basicNeed!.toJson();
//     }
//     data['medicine'] = this.medicine;
//     if (this.food != null) {
//       data['food'] = this.food!.toJson();
//     }
//     if (this.other != null) {
//       data['other'] = this.other!.map((v) => v.toJson()).toList();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class BasicNeed {
//   int? electricity;
//   int? water;
//   int? gas;
//   String? sId;
//
//   BasicNeed({this.electricity, this.water, this.gas, this.sId});
//
//   BasicNeed.fromJson(Map<String, dynamic> json) {
//     electricity = json['electricity'];
//     water = json['water'];
//     gas = json['gas'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['electricity'] = this.electricity;
//     data['water'] = this.water;
//     data['gas'] = this.gas;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Debt {
//   List<Loans>? loans;
//   List<Food>? food;
//   List<BrideStuff>? brideStuff;
//   List<HouseRent>? houseRent;
//   List<Medicine>? medicine;
//   List<Electeric>? electeric;
//   List<Water>? water;
//   List<Gas>? gas;
//   String? sId;
//
//   Debt(
//       {this.loans,
//         this.food,
//         this.brideStuff,
//         this.houseRent,
//         this.medicine,
//         this.electeric,
//         this.water,
//         this.gas,
//         this.sId});
//
//   Debt.fromJson(Map<String, dynamic> json) {
//     if (json['loans'] != null) {
//       loans = <Loans>[];
//       json['loans'].forEach((v) {
//         loans!.add(new Loans.fromJson(v));
//       });
//     }
//     if (json['food'] != null) {
//       food = <Food>[];
//       json['food'].forEach((v) {
//         food!.add(new Food.fromJson(v));
//       });
//     }
//     if (json['brideStuff'] != null) {
//       brideStuff = <BrideStuff>[];
//       json['brideStuff'].forEach((v) {
//         brideStuff!.add(new BrideStuff.fromJson(v));
//       });
//     }
//     if (json['houseRent'] != null) {
//       houseRent = <HouseRent>[];
//       json['houseRent'].forEach((v) {
//         houseRent!.add(new HouseRent.fromJson(v));
//       });
//     }
//     if (json['medicine'] != null) {
//       medicine = <Medicine>[];
//       json['medicine'].forEach((v) {
//         medicine!.add(new Medicine.fromJson(v));
//       });
//     }
//     if (json['electeric'] != null) {
//       electeric = <Electeric>[];
//       json['electeric'].forEach((v) {
//         electeric!.add(new Electeric.fromJson(v));
//       });
//     }
//     if (json['water'] != null) {
//       water = <Water>[];
//       json['water'].forEach((v) {
//         water!.add(new Water.fromJson(v));
//       });
//     }
//     if (json['gas'] != null) {
//       gas = <Gas>[];
//       json['gas'].forEach((v) {
//         gas!.add(new Gas.fromJson(v));
//       });
//     }
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.loans != null) {
//       data['loans'] = this.loans!.map((v) => v.toJson()).toList();
//     }
//     if (this.food != null) {
//       data['food'] = this.food!.map((v) => v.toJson()).toList();
//     }
//     if (this.brideStuff != null) {
//       data['brideStuff'] = this.brideStuff!.map((v) => v.toJson()).toList();
//     }
//     if (this.houseRent != null) {
//       data['houseRent'] = this.houseRent!.map((v) => v.toJson()).toList();
//     }
//     if (this.medicine != null) {
//       data['medicine'] = this.medicine!.map((v) => v.toJson()).toList();
//     }
//     if (this.electeric != null) {
//       data['electeric'] = this.electeric!.map((v) => v.toJson()).toList();
//     }
//     if (this.water != null) {
//       data['water'] = this.water!.map((v) => v.toJson()).toList();
//     }
//     if (this.gas != null) {
//       data['gas'] = this.gas!.map((v) => v.toJson()).toList();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class HouseInfo {
//   String? houseType;
//   int? monthlyRent;
//   int? roomsNumber;
//   Blankets? blankets;
//   String? sId;
//
//   HouseInfo(
//       {this.houseType,
//         this.monthlyRent,
//         this.roomsNumber,
//         this.blankets,
//         this.sId});
//
//   HouseInfo.fromJson(Map<String, dynamic> json) {
//     houseType = json['houseType'];
//     monthlyRent = json['monthlyRent'];
//     roomsNumber = json['roomsNumber'];
//     blankets = json['blankets'] != null
//         ? new Blankets.fromJson(json['blankets'])
//         : null;
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['houseType'] = this.houseType;
//     data['monthlyRent'] = this.monthlyRent;
//     data['roomsNumber'] = this.roomsNumber;
//     if (this.blankets != null) {
//       data['blankets'] = this.blankets!.toJson();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Blankets {
//   int? familyHave;
//   int? familyNeed;
//   int? familyTake;
//   String? sId;
//
//   Blankets({this.familyHave, this.familyNeed, this.familyTake, this.sId});
//
//   Blankets.fromJson(Map<String, dynamic> json) {
//     familyHave = json['familyHave'];
//     familyNeed = json['familyNeed'];
//     familyTake = json['familyTake'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['familyHave'] = this.familyHave;
//     data['familyNeed'] = this.familyNeed;
//     data['familyTake'] = this.familyTake;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Medicine {
//   Husband? husband;
//   Husband? wife;
//   Children? children;
//   String? sId;
//
//   Medicine({this.husband, this.wife, this.children, this.sId});
//
//   Medicine.fromJson(Map<String, dynamic> json) {
//     husband =
//     json['husband'] != null ? new Husband.fromJson(json['husband']) : null;
//     wife = json['wife'] != null ? new Husband.fromJson(json['wife']) : null;
//     children = json['children'] != null
//         ? new Children.fromJson(json['children'])
//         : null;
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.husband != null) {
//       data['husband'] = this.husband!.toJson();
//     }
//     if (this.wife != null) {
//       data['wife'] = this.wife!.toJson();
//     }
//     if (this.children != null) {
//       data['children'] = this.children!.toJson();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Husband {
//   List<MedicineList>? medicineList;
//   int? totalPrice;
//   String? sId;
//
//   Husband({this.medicineList, this.totalPrice, this.sId});
//
//   Husband.fromJson(Map<String, dynamic> json) {
//     if (json['medicineList'] != null) {
//       medicineList = <MedicineList>[];
//       json['medicineList'].forEach((v) {
//         medicineList!.add(new MedicineList.fromJson(v));
//       });
//     }
//     totalPrice = json['totalPrice'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.medicineList != null) {
//       data['medicineList'] = this.medicineList!.map((v) => v.toJson()).toList();
//     }
//     data['totalPrice'] = this.totalPrice;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class MedicineList {
//   String? info;
//   int? concentration;
//   String? sId;
//
//   MedicineList({this.info, this.concentration, this.sId});
//
//   MedicineList.fromJson(Map<String, dynamic> json) {
//     info = json['info'];
//     concentration = json['concentration'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['info'] = this.info;
//     data['concentration'] = this.concentration;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Children {
//   String? name;
//   List<MedicineList>? medicineList;
//   int? totalPrice;
//   String? sId;
//
//   Children({this.name, this.medicineList, this.totalPrice, this.sId});
//
//   Children.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     if (json['medicineList'] != null) {
//       medicineList = <MedicineList>[];
//       json['medicineList'].forEach((v) {
//         medicineList!.add(new MedicineList.fromJson(v));
//       });
//     }
//     totalPrice = json['totalPrice'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     if (this.medicineList != null) {
//       data['medicineList'] = this.medicineList!.map((v) => v.toJson()).toList();
//     }
//     data['totalPrice'] = this.totalPrice;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Bride {
//   String? weddingDate;
//   String? brideType;
//   BrideDevices? brideDevices;
//   String? sId;
//
//   Bride({this.weddingDate, this.brideType, this.brideDevices, this.sId});
//
//   Bride.fromJson(Map<String, dynamic> json) {
//     weddingDate = json['weddingDate'];
//     brideType = json['brideType'];
//     brideDevices = json['brideDevices'] != null
//         ? new BrideDevices.fromJson(json['brideDevices'])
//         : null;
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['weddingDate'] = this.weddingDate;
//     data['brideType'] = this.brideType;
//     if (this.brideDevices != null) {
//       data['brideDevices'] = this.brideDevices!.toJson();
//     }
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class BrideDevices {
//   bool? fridge;
//   bool? washingMachine;
//   bool? cooker;
//   bool? kitchen;
//   String? sId;
//
//   BrideDevices(
//       {this.fridge, this.washingMachine, this.cooker, this.kitchen, this.sId});
//
//   BrideDevices.fromJson(Map<String, dynamic> json) {
//     fridge = json['fridge'];
//     washingMachine = json['washingMachine'];
//     cooker = json['cooker'];
//     kitchen = json['kitchen'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['fridge'] = this.fridge;
//     data['washingMachine'] = this.washingMachine;
//     data['cooker'] = this.cooker;
//     data['kitchen'] = this.kitchen;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class School {
//   List<Children>? children;
//   int? bagNumber;
//   String? sId;
//
//   School({this.children, this.bagNumber, this.sId});
//
//   School.fromJson(Map<String, dynamic> json) {
//     if (json['children'] != null) {
//       children = <Children>[];
//       json['children'].forEach((v) {
//         children!.add(new Children.fromJson(v));
//       });
//     }
//     bagNumber = json['bagNumber'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.children != null) {
//       data['children'] = this.children!.map((v) => v.toJson()).toList();
//     }
//     data['bagNumber'] = this.bagNumber;
//     data['_id'] = this.sId;
//     return data;
//   }
// }
//
// class Children {
//   String? name;
//   String? educationLevel;
//   String? sId;
//
//   Children({this.name, this.educationLevel, this.sId});
//
//   Children.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     educationLevel = json['educationLevel'];
//     sId = json['_id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['educationLevel'] = this.educationLevel;
//     data['_id'] = this.sId;
//     return data;
//   }
// }