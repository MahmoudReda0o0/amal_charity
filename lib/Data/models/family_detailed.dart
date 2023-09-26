// ignore_for_file: public_member_api_docs, sort_constructors_first
class FamilyDetailedModel {
  String? sId;
  FamilyInfoFromDetailed? familyInfo;
  Husband? husband;
  Wife? wife;
  Children? children;
  Income? income;
  Expenses? expenses;
  Debt? debt;
  HouseInfo? houseInfo;
  BasicClass? medicine;
  Bride? bride;
  School? school;
  int? total;
  int? iV;
  FamilyDetailedModel({
    this.sId,
    this.familyInfo,
    this.husband,
    this.wife,
    this.children,
    this.income,
    this.expenses,
    this.debt,
    this.houseInfo,
    this.medicine,
    this.bride,
    this.school,
    this.total,
    this.iV,
  });

  FamilyDetailedModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    familyInfo = json['FamilyInfo'] != null
        ? FamilyInfoFromDetailed.fromJson(json['FamilyInfo'])
        : null;
    husband =
        json['Husband'] != null ? Husband.fromJson(json['Husband']) : null;
    wife = json['Wife'] != null ? Wife.fromJson(json['Wife']) : null;
    children =
        json['Children'] != null ? Children.fromJson(json['Children']) : null;
    income = json['Income'] != null ? Income.fromJson(json['Income']) : null;
    expenses =
        json['Expenses'] != null ? Expenses.fromJson(json['Expenses']) : null;
    debt = json['Debt'] != null ? Debt.fromJson(json['Debt']) : null;
    houseInfo = json['HouseInfo'] != null
        ? HouseInfo.fromJson(json['HouseInfo'])
        : null;
    medicine =
        json['Medicine'] != null ? BasicClass.fromJson(json['Medicine']) : null;
    bride = json['Bride'] != null ? Bride.fromJson(json['Bride']) : null;
    school = json['School'] != null ? School.fromJson(json['School']) : null;
    total = json['Total'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['FamilyInfo'] = familyInfo?.toJson();
    data['Husband'] = husband?.toJson();
    data['Wife'] = wife?.toJson();
    data['Children'] = children?.toJson();
    data['Income'] = income?.toJson();
    data['Expenses'] = expenses?.toJson();
    data['Debt'] = debt?.toJson();
    data['HouseInfo'] = houseInfo?.toJson();
    data['Medicine'] = medicine?.toJson();
    data['Bride'] = bride?.toJson();
    data['School'] = school?.toJson();
    data['Total'] = total;
    data['__v'] = iV;
    return data;
  }
}

class FamilyInfoFromDetailed {
  int? familyNO;
  String? familyAdress;
  String? location;
  String? familyBreadWinner;
  double? familyPercent;
  String? familyClass;
  int? monthlyMoney;
  String? sId;

  FamilyInfoFromDetailed({
    this.familyNO,
    this.familyAdress,
    this.location,
    this.familyBreadWinner,
    this.familyPercent,
    this.familyClass,
    this.monthlyMoney,
    this.sId,
  });

  factory FamilyInfoFromDetailed.fromJson(Map<String, dynamic> json) {
    return FamilyInfoFromDetailed(
      familyNO: json['familyNO'],
      familyAdress: json['familyAdress'],
      location: json['location'],
      familyBreadWinner: json['familyBreadWinner'],
      familyPercent: json['familyPercent']?.toDouble(), // Parse as double
      familyClass: json['familyClass'],
      monthlyMoney: json['monthlyMoney'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['familyNO'] = familyNO;
    data['familyAdress'] = familyAdress;
    data['location'] = location;
    data['familyBreadWinner'] = familyBreadWinner;
    data['familyPercent'] = familyPercent;
    data['familyClass'] = familyClass;
    data['monthlyMoney'] = monthlyMoney;
    data['_id'] = sId;
    return data;
  }
}

class Husband {
  String? name;
  int? age;
  bool? enableWork;
  String? job;
  String? education;
  String? teleNumber;
  String? sId;

  Husband({
    this.name,
    this.age,
    this.enableWork,
    this.job,
    this.education,
    this.teleNumber,
    this.sId,
  });

  factory Husband.fromJson(Map<String, dynamic> json) {
    return Husband(
      name: json['name'],
      age: json['age'],
      enableWork: json['enableWork'],
      job: json['job'],
      education: json['education'],
      teleNumber: json['teleNumber'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['age'] = age;
    data['enableWork'] = enableWork;
    data['job'] = job;
    data['education'] = education;
    data['teleNumber'] = teleNumber;
    data['_id'] = sId;
    return data;
  }
}

class Wife {
  String? name;
  int? age;
  bool? enableWork;
  bool? enableMarry;
  String? job;
  String? education;
  String? teleNumber;
  String? sId;

  Wife({
    this.name,
    this.age,
    this.enableWork,
    this.enableMarry,
    this.job,
    this.education,
    this.teleNumber,
    this.sId,
  });

  factory Wife.fromJson(Map<String, dynamic> json) {
    return Wife(
      name: json['name'],
      age: json['age'],
      enableWork: json['enableWork'],
      enableMarry: json['enableMarry'],
      job: json['job'],
      education: json['education'],
      teleNumber: json['teleNumber'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['age'] = age;
    data['enableWork'] = enableWork;
    data['enableMarry'] = enableMarry;
    data['job'] = job;
    data['education'] = education;
    data['teleNumber'] = teleNumber;
    data['_id'] = sId;
    return data;
  }
}

class Children {
  int? childrenNumber;
  List<ChildInfo>? childInfo;
  String? sId;

  Children({this.childrenNumber, this.childInfo, this.sId});

  factory Children.fromJson(Map<String, dynamic> json) {
    return Children(
      childrenNumber: json['childrenNumber'],
      childInfo: (json['childInfo'] as List<dynamic>?)
          ?.map((item) => ChildInfo.fromJson(item as Map<String, dynamic>))
          .toList(),
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['childrenNumber'] = childrenNumber;
    data['childInfo'] = childInfo?.map((item) => item.toJson()).toList();
    data['_id'] = sId;
    return data;
  }
}

class ChildInfo {
  String? name;
  int? age;
  String? gender;
  String? string;
  String? sId;

  ChildInfo({this.name, this.age, this.gender, this.string, this.sId});

  factory ChildInfo.fromJson(Map<String, dynamic> json) {
    return ChildInfo(
      name: json['name'],
      age: json['age'],
      gender: json['gender'],
      string: json['string'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['age'] = age;
    data['gender'] = gender;
    data['string'] = string;
    data['_id'] = sId;
    return data;
  }
}

class Income {
  BasicClass? husbandJob;
  BasicClass? wifeJob;
  List<Childrenjob>? childrenjob;
  BasicClass? pension;
  BasicClass? otherCharitiesHelp;
  List<BasicClass>? other;
  String? sId;

  Income.fromJson(Map<String, dynamic> json) {
    husbandJob = json['husbandJob'] != null
        ? BasicClass.fromJson(json['husbandJob'])
        : null;

    wifeJob =
        json['wifeJob'] != null ? BasicClass.fromJson(json['wifeJob']) : null;
    if (json['childrenjob'] != null) {
      childrenjob = (json['childrenjob'] as List<dynamic>)
          .map((item) => Childrenjob.fromJson(item as Map<String, dynamic>))
          .toList();
    }
    pension =
        json['pension'] != null ? BasicClass.fromJson(json['pension']) : null;

    otherCharitiesHelp = json['otherCharitiesHelp'] != null
        ? BasicClass.fromJson(json['otherCharitiesHelp'])
        : null;
    if (json['other'] != null) {
      other = (json['other'] as List<dynamic>)
          .map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList();
    }
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (husbandJob != null) {
      data['husbandJob'] = husbandJob!.toJson();
    }

    if (wifeJob != null) {
      data['wifeJob'] = wifeJob!.toJson();
    }

    data['childrenjob'] = childrenjob?.map((item) => item.toJson()).toList();

    if (pension != null) {
      data['pension'] = pension!.toJson();
    }

    if (otherCharitiesHelp != null) {
      data['otherCharitiesHelp'] = otherCharitiesHelp!.toJson();
    }

    data['other'] = other?.map((item) => item.toJson()).toList();
    data['_id'] = sId;

    return data;
  }
}

class BasicClass {
  String? info;
  int? price;
  String? sId;

  BasicClass({this.info, this.price, this.sId});

  factory BasicClass.fromJson(Map<String, dynamic> json) {
    return BasicClass(
      info: json['info'],
      price: json['price'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['info'] = info;
    data['price'] = price;
    data['_id'] = sId;
    return data;
  }
}

class Childrenjob {
  String? name;
  String? info;
  int? price;
  String? sId;

  Childrenjob({this.name, this.info, this.price, this.sId});

  factory Childrenjob.fromJson(Map<String, dynamic> json) {
    return Childrenjob(
      name: json['name'],
      info: json['info'],
      price: json['price'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['info'] = info;
    data['price'] = price;
    data['_id'] = sId;
    return data;
  }
}

class Expenses {
  int? houseRent;
  BasicNeed? basicNeed;
  int? medicine;
  BasicClass? food;
  List<BasicClass>? other;
  String? sId;

  Expenses.fromJson(Map<String, dynamic> json) {
    houseRent = json['houseRent'];
    basicNeed = json['basicNeed'] != null
        ? BasicNeed.fromJson(json['basicNeed'])
        : null;
    medicine = json['medicine'];
    food = json['food'] != null ? BasicClass.fromJson(json['food']) : null;
    if (json['other'] != null) {
      other = (json['other'] as List<dynamic>)
          .map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList();
    }
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['houseRent'] = houseRent;

    if (basicNeed != null) {
      data['basicNeed'] = basicNeed!.toJson();
    }

    data['medicine'] = medicine;

    if (food != null) {
      data['food'] = food!.toJson();
    }

    if (other != null) {
      data['other'] = other!.map((item) => item.toJson()).toList();
    }

    data['_id'] = sId;

    return data;
  }
}

class BasicNeed {
  int? electricity;
  int? water;
  int? gas;
  String? sId;

  BasicNeed({this.electricity, this.water, this.gas, this.sId});

  factory BasicNeed.fromJson(Map<String, dynamic> json) {
    return BasicNeed(
      electricity: json['electricity'],
      water: json['water'],
      gas: json['gas'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['electricity'] = electricity;
    data['water'] = water;
    data['gas'] = gas;
    data['_id'] = sId;
    return data;
  }
}

class Debt {
  List<BasicClass>? loans;
  List<BasicClass>? food;
  List<BasicClass>? brideStuff;
  List<BasicClass>? houseRent;
  List<Medicine>? medicine;
  List<BasicClass>? electeric;
  List<BasicClass>? water;
  List<BasicClass>? gas;
  String? sId;

  Debt({
    this.loans,
    this.food,
    this.brideStuff,
    this.houseRent,
    this.medicine,
    this.electeric,
    this.water,
    this.gas,
    this.sId,
  });

  factory Debt.fromJson(Map<String, dynamic> json) {
    return Debt(
      loans: (json['loans'] as List<dynamic>?)
          ?.map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList(),
      food: (json['food'] as List<dynamic>?)
          ?.map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList(),
      brideStuff: (json['brideStuff'] as List<dynamic>?)
          ?.map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList(),
      houseRent: (json['houseRent'] as List<dynamic>?)
          ?.map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList(),
      medicine: (json['medicine'] as List<dynamic>?)
          ?.map((item) => Medicine.fromJson(item as Map<String, dynamic>))
          .toList(),
      electeric: (json['electeric'] as List<dynamic>?)
          ?.map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList(),
      water: (json['water'] as List<dynamic>?)
          ?.map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList(),
      gas: (json['gas'] as List<dynamic>?)
          ?.map((item) => BasicClass.fromJson(item as Map<String, dynamic>))
          .toList(),
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['loans'] = loans?.map((item) => item.toJson()).toList();
    data['food'] = food?.map((item) => item.toJson()).toList();
    data['brideStuff'] = brideStuff?.map((item) => item.toJson()).toList();
    data['houseRent'] = houseRent?.map((item) => item.toJson()).toList();
    data['medicine'] = medicine?.map((item) => item.toJson()).toList();
    data['electeric'] = electeric?.map((item) => item.toJson()).toList();
    data['water'] = water?.map((item) => item.toJson()).toList();
    data['gas'] = gas?.map((item) => item.toJson()).toList();
    data['_id'] = sId;

    return data;
  }
}

class HouseInfo {
  String? houseType;
  int? monthlyRent;
  int? roomsNumber;
  Blankets? blankets;
  String? sId;

  HouseInfo(
      {this.houseType,
      this.monthlyRent,
      this.roomsNumber,
      this.blankets,
      this.sId});

  factory HouseInfo.fromJson(Map<String, dynamic> json) {
    return HouseInfo(
      houseType: json['houseType'],
      monthlyRent: json['monthlyRent'],
      roomsNumber: json['roomsNumber'],
      blankets:
          json['blankets'] != null ? Blankets.fromJson(json['blankets']) : null,
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['houseType'] = houseType;
    data['monthlyRent'] = monthlyRent;
    data['roomsNumber'] = roomsNumber;

    if (blankets != null) {
      data['blankets'] = blankets!.toJson();
    }

    data['_id'] = sId;
    return data;
  }
}

class Blankets {
  int? familyHave;
  int? familyNeed;
  int? familyTake;
  String? sId;

  Blankets({this.familyHave, this.familyNeed, this.familyTake, this.sId});

  factory Blankets.fromJson(Map<String, dynamic> json) {
    return Blankets(
      familyHave: json['familyHave'],
      familyNeed: json['familyNeed'],
      familyTake: json['familyTake'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['familyHave'] = familyHave;
    data['familyNeed'] = familyNeed;
    data['familyTake'] = familyTake;
    data['_id'] = sId;
    return data;
  }
}

class Medicine {
  ParentsRequiredMedicine? husband;
  ParentsRequiredMedicine? wife;
  ChildrenMedicine? children;
  String? sId;

  Medicine({this.husband, this.wife, this.children, this.sId});

  factory Medicine.fromJson(Map<String, dynamic> json) {
    return Medicine(
      husband: json['husband'] != null
          ? ParentsRequiredMedicine.fromJson(json['husband'])
          : null,
      wife: json['wife'] != null
          ? ParentsRequiredMedicine.fromJson(json['wife'])
          : null,
      children: json['children'] != null
          ? ChildrenMedicine.fromJson(json['children'])
          : null,
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (husband != null) {
      data['husband'] = husband!.toJson();
    }

    if (wife != null) {
      data['wife'] = wife!.toJson();
    }

    if (children != null) {
      data['children'] = children!.toJson();
    }

    data['_id'] = sId;

    return data;
  }
}

class ParentsRequiredMedicine {
  List<MedicineList>? medicineList;
  int? totalPrice;
  String? sId;

  ParentsRequiredMedicine({this.medicineList, this.totalPrice, this.sId});

  factory ParentsRequiredMedicine.fromJson(Map<String, dynamic> json) {
    var medicineListData = json['medicineList'] as List<dynamic>?;

    List<MedicineList>? medicineListItems;

    if (medicineListData != null) {
      medicineListItems = medicineListData.map((v) {
        return MedicineList.fromJson(v as Map<String, dynamic>);
      }).toList();
    }

    return ParentsRequiredMedicine(
      medicineList: medicineListItems,
      totalPrice: json['totalPrice'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (medicineList != null) {
      data['medicineList'] = medicineList!.map((v) => v.toJson()).toList();
    }

    data['totalPrice'] = totalPrice;
    data['_id'] = sId;

    return data;
  }
}

class MedicineList {
  String? info;
  int? concentration;
  String? sId;

  MedicineList({this.info, this.concentration, this.sId});

  factory MedicineList.fromJson(Map<String, dynamic> json) {
    return MedicineList(
      info: json['info'],
      concentration: json['concentration'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['info'] = info;
    data['concentration'] = concentration;
    data['_id'] = sId;
    return data;
  }
}

class ChildrenMedicine {
  String? name;
  List<MedicineList>? medicineList;
  int? totalPrice;
  String? sId;

  ChildrenMedicine({this.name, this.medicineList, this.totalPrice, this.sId});

  factory ChildrenMedicine.fromJson(Map<String, dynamic> json) {
    var medicineListData = json['medicineList'] as List<dynamic>?;

    List<MedicineList>? medicineListItems;

    if (medicineListData != null) {
      medicineListItems = medicineListData.map((v) {
        return MedicineList.fromJson(v as Map<String, dynamic>);
      }).toList();
    }

    return ChildrenMedicine(
      name: json['name'],
      medicineList: medicineListItems,
      totalPrice: json['totalPrice'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;

    if (medicineList != null) {
      data['medicineList'] = medicineList!.map((v) => v.toJson()).toList();
    }

    data['totalPrice'] = totalPrice;
    data['_id'] = sId;

    return data;
  }
}

class Bride {
  String? weddingDate;
  String? brideType;
  BrideDevices? brideDevices;
  String? sId;

  Bride({this.weddingDate, this.brideType, this.brideDevices, this.sId});

  factory Bride.fromJson(Map<String, dynamic> json) {
    return Bride(
      weddingDate: json['weddingDate'],
      brideType: json['brideType'],
      brideDevices: json['brideDevices'] != null
          ? BrideDevices.fromJson(json['brideDevices'])
          : null,
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['weddingDate'] = weddingDate;
    data['brideType'] = brideType;
    data['brideDevices'] = brideDevices != null ? brideDevices!.toJson() : null;
    data['_id'] = sId;
    return data;
  }
}

class BrideDevices {
  bool? fridge;
  bool? washingMachine;
  bool? cooker;
  bool? kitchen;
  String? sId;

  BrideDevices({
    this.fridge,
    this.washingMachine,
    this.cooker,
    this.kitchen,
    this.sId,
  });

  factory BrideDevices.fromJson(Map<String, dynamic> json) {
    return BrideDevices(
      fridge: json['fridge'],
      washingMachine: json['washingMachine'],
      cooker: json['cooker'],
      kitchen: json['kitchen'],
      sId: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fridge'] = fridge;
    data['washingMachine'] = washingMachine;
    data['cooker'] = cooker;
    data['kitchen'] = kitchen;
    data['_id'] = sId;
    return data;
  }
}

class School {
  List<ChildrenSchool>? children;
  String? bagNumber;
  String? sId;

  // Constructor
  School({this.children, this.bagNumber, this.sId});

  // Factory constructor to create an instance from a JSON map
  factory School.fromJson(Map<String, dynamic> json) {
    var schoolChildren = json['children'] as List<dynamic>?;

    List<ChildrenSchool>? childrenList;

    if (schoolChildren != null) {
      childrenList = schoolChildren.map((v) {
        return ChildrenSchool.fromJson(v as Map<String, dynamic>);
      }).toList();
    }

    return School(
      children: childrenList,
      bagNumber: json['bagNumber'],
      sId: json['_id'],
    );
  }

  // Convert the object to a JSON map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (children != null) {
      data['children'] = children!.map((v) => v.toJson()).toList();
    }

    data['bagNumber'] = bagNumber;
    data['_id'] = sId;

    return data;
  }
}

class ChildrenSchool {
  String? name;
  String? educationLevel;
  String? sId;

  ChildrenSchool({this.name, this.educationLevel, this.sId});

  // Factory constructor to create an instance from a JSON map
  factory ChildrenSchool.fromJson(Map<String, dynamic> json) {
    return ChildrenSchool(
      name: json['name'],
      educationLevel: json['educationLevel'],
      sId: json['_id'],
    );
  }
  // Convert the object to a JSON map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['educationLevel'] = educationLevel;
    data['_id'] = sId;
    return data;
  }
}
