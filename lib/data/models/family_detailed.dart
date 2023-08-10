class FamilyDetailedModel {
  String? sId;
  FamilyInfo? familyInfo;
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

  FamilyDetailedModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    familyInfo = json['FamilyInfo'] != null
        ? FamilyInfo.fromJson(json['FamilyInfo'])
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
}

class FamilyInfo {
  int? familyNO;
  String? familyAdress;
  String? location;
  String? familyBreadWinner;
  double? familyPercent;
  String? familyClass;
  int? monthlyMoney;
  String? sId;

  FamilyInfo({
    this.familyNO,
    this.familyAdress,
    this.location,
    this.familyBreadWinner,
    this.familyPercent,
    this.familyClass,
    this.monthlyMoney,
    this.sId,
  });

  FamilyInfo.fromJson(Map<String, dynamic> json) {
    familyNO = json['familyNO'];
    familyAdress = json['familyAdress'];
    location = json['location'];
    familyBreadWinner = json['familyBreadWinner'];
    familyPercent = json['familyPercent'];
    familyClass = json['familyClass'];
    monthlyMoney = json['monthlyMoney'];
    sId = json['sId'];
    sId = json['_id'];
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

  Husband.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    enableWork = json['enableWork'];
    job = json['job'];
    education = json['education'];
    teleNumber = json['teleNumber'];
    sId = json['_id'];
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

  Wife.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    enableWork = json['enableWork'];
    enableMarry = json['enableMarry'];
    job = json['job'];
    education = json['education'];
    teleNumber = json['teleNumber'];
    sId = json['_id'];
  }
}

class Children {
  int? childrenNumber;
  List<ChildInfo>? childInfo;
  String? sId;

  Children({this.childrenNumber, this.childInfo, this.sId});

  Children.fromJson(Map<String, dynamic> json) {
    childrenNumber = json['childrenNumber'];
    if (json['childInfo'] != null) {
      childInfo = <ChildInfo>[];
      json['childInfo'].forEach((v) {
        childInfo!.add(ChildInfo.fromJson(v));
      });
    }
    sId = json['_id'];
  }
}

class ChildInfo {
  String? name;
  int? age;
  String? gender;
  String? string;
  String? sId;

  ChildInfo({this.name, this.age, this.gender, this.string, this.sId});

  ChildInfo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    gender = json['gender'];
    string = json['string'];
    sId = json['_id'];
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
      childrenjob = <Childrenjob>[];
      json['childrenjob'].forEach((v) {
        childrenjob!.add(Childrenjob.fromJson(v));
      });
    }
    pension =
        json['pension'] != null ? BasicClass.fromJson(json['pension']) : null;

    otherCharitiesHelp = json['otherCharitiesHelp'] != null
        ? BasicClass.fromJson(json['otherCharitiesHelp'])
        : null;
    if (json['other'] != null) {
      other = <BasicClass>[];
      json['other'].forEach((v) {
        other!.add(BasicClass.fromJson(v));
      });
    }
    sId = json['_id'];
  }
}

class BasicClass {
  String? info;
  int? price;
  String? sId;

  BasicClass({this.info, this.price, this.sId});

  BasicClass.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    price = json['price'];
    sId = json['_id'];
  }
}

class Childrenjob {
  String? name;
  String? info;
  int? price;
  String? sId;

  Childrenjob({this.name, this.info, this.price, this.sId});

  Childrenjob.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    info = json['info'];
    price = json['price'];
    sId = json['_id'];
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
      other = <BasicClass>[];
      json['other'].forEach((v) {
        other!.add(BasicClass.fromJson(v));
      });
    }
    sId = json['_id'];
  }
}

class BasicNeed {
  int? electricity;
  int? water;
  int? gas;
  String? sId;

  BasicNeed({this.electricity, this.water, this.gas, this.sId});
  BasicNeed.fromJson(Map<String, dynamic> json) {
    electricity = json['electricity'];
    water = json['water'];
    gas = json['gas'];
    sId = json['_id'];
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

  Debt(
      {this.loans,
      this.food,
      this.brideStuff,
      this.houseRent,
      this.medicine,
      this.electeric,
      this.water,
      this.gas,
      this.sId});

  Debt.fromJson(Map<String, dynamic> json) {
    if (json['loans'] != null) {
      loans = <BasicClass>[];
      json['loans'].forEach((v) {
        loans!.add(BasicClass.fromJson(v));
      });
    }
    if (json['food'] != null) {
      food = <BasicClass>[];
      json['food'].forEach((v) {
        food!.add(BasicClass.fromJson(v));
      });
    }
    if (json['brideStuff'] != null) {
      brideStuff = <BasicClass>[];
      json['brideStuff'].forEach((v) {
        brideStuff!.add(BasicClass.fromJson(v));
      });
    }
    if (json['houseRent'] != null) {
      houseRent = <BasicClass>[];
      json['houseRent'].forEach((v) {
        houseRent!.add(BasicClass.fromJson(v));
      });
    }
    if (json['medicine'] != null) {
      medicine = <Medicine>[];
      json['medicine'].forEach((v) {
        medicine!.add(Medicine.fromJson(v));
      });
    }
    if (json['electeric'] != null) {
      electeric = <BasicClass>[];
      json['electeric'].forEach((v) {
        electeric!.add(BasicClass.fromJson(v));
      });
    }
    if (json['water'] != null) {
      water = <BasicClass>[];
      json['water'].forEach((v) {
        water!.add(BasicClass.fromJson(v));
      });
    }
    if (json['gas'] != null) {
      gas = <BasicClass>[];
      json['gas'].forEach((v) {
        gas!.add(BasicClass.fromJson(v));
      });
    }
    sId = json['_id'];
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

  HouseInfo.fromJson(Map<String, dynamic> json) {
    houseType = json['houseType'];
    monthlyRent = json['monthlyRent'];
    roomsNumber = json['roomsNumber'];
    blankets =
        json['blankets'] != null ? Blankets.fromJson(json['blankets']) : null;
    sId = json['_id'];
  }
}

class Blankets {
  int? familyHave;
  int? familyNeed;
  int? familyTake;
  String? sId;

  Blankets({this.familyHave, this.familyNeed, this.familyTake, this.sId});

  Blankets.fromJson(Map<String, dynamic> json) {
    familyHave = json['familyHave'];
    familyNeed = json['familyNeed'];
    familyTake = json['familyTake'];
    sId = json['_id'];
  }
}

class Medicine {
  ParentsRequiredMedicine? husband;
  ParentsRequiredMedicine? wife;
  ChildrenMedicine? children;
  String? sId;

  Medicine({this.husband, this.wife, this.children, this.sId});

  Medicine.fromJson(Map<String, dynamic> json) {
    husband = json['husband'] != null
        ? ParentsRequiredMedicine.fromJson(json['husband'])
        : null;
    wife = json['wife'] != null
        ? ParentsRequiredMedicine.fromJson(json['wife'])
        : null;
    children = json['children'] != null
        ? ChildrenMedicine.fromJson(json['children'])
        : null;
    sId = json['_id'];
  }
}

class ParentsRequiredMedicine {
  List<MedicineList>? medicineList;
  int? totalPrice;
  String? sId;

  ParentsRequiredMedicine({this.medicineList, this.totalPrice, this.sId});

  ParentsRequiredMedicine.fromJson(Map<String, dynamic> json) {
    if (json['medicineList'] != null) {
      medicineList = <MedicineList>[];
      json['medicineList'].forEach((v) {
        medicineList!.add(MedicineList.fromJson(v));
      });
    }
    totalPrice = json['totalPrice'];
    sId = json['_id'];
  }
}

class MedicineList {
  String? info;
  int? concentration;
  String? sId;

  MedicineList({this.info, this.concentration, this.sId});

  MedicineList.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    concentration = json['concentration'];
    sId = json['_id'];
  }
}

class ChildrenMedicine {
  String? name;
  List<MedicineList>? medicineList;
  int? totalPrice;
  String? sId;

  ChildrenMedicine({this.name, this.medicineList, this.totalPrice, this.sId});

  ChildrenMedicine.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    if (json['medicineList'] != null) {
      medicineList = <MedicineList>[];
      json['medicineList'].forEach((v) {
        medicineList!.add(MedicineList.fromJson(v));
      });
    }
    totalPrice = json['totalPrice'];
    sId = json['_id'];
  }
}

class Bride {
  String? weddingDate;
  String? brideType;
  BrideDevices? brideDevices;
  String? sId;

  Bride({this.weddingDate, this.brideType, this.brideDevices, this.sId});

  Bride.fromJson(Map<String, dynamic> json) {
    weddingDate = json['weddingDate'];
    brideType = json['brideType'];
    brideDevices = json['brideDevices'] != null
        ? BrideDevices.fromJson(json['brideDevices'])
        : null;
    sId = json['_id'];
  }
}

class BrideDevices {
  bool? fridge;
  bool? washingMachine;
  bool? cooker;
  bool? kitchen;
  String? sId;

  BrideDevices(
      {this.fridge, this.washingMachine, this.cooker, this.kitchen, this.sId});

  BrideDevices.fromJson(Map<String, dynamic> json) {
    fridge = json['fridge'];
    washingMachine = json['washingMachine'];
    cooker = json['cooker'];
    kitchen = json['kitchen'];
    sId = json['_id'];
  }
}

class School {
  List<ChildrenSchool>? children;
  int? bagNumber;
  String? sId;

  School({this.children, this.bagNumber, this.sId});

  School.fromJson(Map<String, dynamic> json) {
    if (json['children'] != null) {
      children = <ChildrenSchool>[];
      json['children'].forEach((v) {
        children!.add(ChildrenSchool.fromJson(v));
      });
    }
    bagNumber = json['bagNumber'];
    sId = json['_id'];
  }
}

class ChildrenSchool {
  String? name;
  String? educationLevel;
  String? sId;

  ChildrenSchool({this.name, this.educationLevel, this.sId});

  ChildrenSchool.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    educationLevel = json['educationLevel'];
    sId = json['_id'];
  }
}
