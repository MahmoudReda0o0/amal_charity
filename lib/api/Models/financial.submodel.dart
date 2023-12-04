/// @author:         Nader Hany
/// @version:        1.2
/// @date:           26/11/2023
/// @description:    this will be a submodel model for parents

/// ****************** jobInfo **********************
class JobInfo {
  String name = '';
  String info = '';
  int price = 0;
  JobInfo({this.name = '', this.info = '', this.price = 0});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {"name": name, "info": info, "price": price};
    return tmp;
  }
}

/// ******************* income **********************
class Income {
  late JobInfo husbandJob, wifeJob, pension, otherCharitiesHelp;
  List<JobInfo> other = List.empty(growable: true),
      childrenjob = List.empty(growable: true);

  /// initialize the arttributes
  Income(
      {required this.husbandJob,
      required this.wifeJob,
      required this.pension,
      required this.otherCharitiesHelp,
      required this.other,
      required this.childrenjob});

  Income.fromMap(Map<String, dynamic> map) {
    try {
      husbandJob = JobInfo(
          info: map['husbandJob']['info'], price: map['husbandJob']['price']);
      wifeJob =
          JobInfo(info: map['wifeJob']['info'], price: map['wifeJob']['price']);
      pension =
          JobInfo(info: map['pension']['info'], price: map['pension']['price']);
      otherCharitiesHelp = JobInfo(
          info: map['otherCharitiesHelp']['info'],
          price: map['otherCharitiesHelp']['price']);
      for (var otherItem in map['other']) {
        other.add(JobInfo(info: otherItem['info'], price: otherItem['price']));
      }
      for (var childJob in map['childrenjob']) {
        childrenjob.add(JobInfo(
            info: childJob['info'],
            name: childJob['name'],
            price: childJob['price']));
      }
    } catch (e) {
      print("Income->fromMap():: failed to initialize members $e");
    }
  }

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> a1 = [];
    for (var i in other) {
      a1.add(i.toMap());
    }

    List<Map<String, dynamic>> a2 = [];
    for (var i in childrenjob) {
      a2.add(i.toMap());
    }

    Map<String, dynamic> tmp = {
      "husbandJob": husbandJob.toMap(),
      "wifeJob": wifeJob.toMap(),
      "pension": pension.toMap(),
      "otherCharitiesHelp": otherCharitiesHelp.toMap(),
      "childrenjob": a2,
      "other": a1,
    };
    return tmp;
  }
}

/// ******************* Expenses **********************
class Expenses {
  int houseRent = 0, medicine = 0;
  late JobInfo food;
  List<JobInfo> other = [];
  int electricity = 0, water = 0, gas = 0;

  // Constructor to initialize default values
  Expenses({
    this.houseRent = 0,
    this.medicine = 0,
    required this.food,
    required this.other,
    this.electricity = 0,
    this.water = 0,
    this.gas = 0,
  });

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> a1 = [];
    for (var i in other) {
      a1.add(i.toMap());
    }

    Map<String, dynamic> tmp2 = {
      "electricity": electricity,
      "water": water,
      "gas": gas,
    };

    Map<String, dynamic> tmp = {
      "houseRent": houseRent,
      "medicine": medicine,
      "food": food.toMap(),
      "basicNeed": tmp2,
      "other": a1
    };
    return tmp;
  }

  Expenses.fromMap(Map<String, dynamic> map) {
    try {
      houseRent = map['houseRent'];
      medicine = map['medicine'];
      food = JobInfo(info: map['food']['info'], price: map['food']['price']);
      electricity = map['basicNeed']['electricity'];
      water = map['basicNeed']['water'];
      gas = map['basicNeed']['gas'];
      for (var element in map['other']) {
        other.add(JobInfo(info: element['info'], price: element['price']));
      }
    } catch (e) {
      print("Expenses->fromMap():: failed to initialize members $e");
    }
  }
}

/// ******************* Debt **********************
class Debt {
  List<JobInfo> loans = [];
  List<JobInfo> food = [];
  List<JobInfo> brideStuff = [];
  List<JobInfo> houseRent = [];
  List<JobInfo> medicine = [];
  List<JobInfo> electric = [];
  List<JobInfo> water = [];
  List<JobInfo> gas = [];
  Debt(
      {required this.loans,
      required this.food,
      required this.brideStuff,
      required this.electric,
      required this.gas,
      required this.houseRent,
      required this.medicine,
      required this.water});
  Debt.fromMap(Map<String, dynamic> map) {
    try {
      for (var element in map['loans']) {
        loans.add(JobInfo(info: element['info'], price: element['price']));
      }
      for (var element in map['food']) {
        food.add(JobInfo(info: element['info'], price: element['price']));
      }
      for (var element in map['brideStuff']) {
        brideStuff.add(JobInfo(info: element['info'], price: element['price']));
      }
      for (var element in map['houseRent']) {
        houseRent.add(JobInfo(info: element['info'], price: element['price']));
      }
      for (var element in map['houseRent']) {
        medicine.add(JobInfo(info: element['info'], price: element['price']));
      }
      for (var element in map['electeric']) {
        electric.add(JobInfo(info: element['info'], price: element['price']));
      }
      for (var element in map['water']) {
        water.add(JobInfo(info: element['info'], price: element['price']));
      }
      for (var element in map['gas']) {
        gas.add(JobInfo(info: element['info'], price: element['price']));
      }
    } catch (e) {
      print("Debt->fromMap():: failed to initialize members $e");
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {"deptaa": ""};
    return tmp;
  }
}

/// ******************* Medicine **********************
class Medicine {
  late SingleMedicine husband;
  late SingleMedicine wife;
  late ChildSingleMedicine children;

  Medicine({
    required this.husband,
    required this.wife,
    required this.children,
  });
  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "Medicine": "info",
    };
    return tmp;
  }

  Medicine.fromMap(Map<String, dynamic> map) {
    try {
      husband = SingleMedicine.fromMap(map['husband']);
      wife = SingleMedicine.fromMap(map['wife']);
      children = ChildSingleMedicine.fromMap(map['children']);
    } catch (e) {
      print("Medicine->fromMap():: failed to initialize members $e");
    }
  }
}

/// ******************* SingleMedicine **********************
class SingleMedicine {
  List<Med> medicineList = List.empty(growable: true);
  late double totalPrice;

  SingleMedicine({
    required this.medicineList,
    required this.totalPrice,
  });
  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "SingleMedicine": "info",
    };
    return tmp;
  }

  SingleMedicine.fromMap(Map<String, dynamic> map) {
    // print(map);
    try {
      for (var element in map['medicineList']) {
        medicineList.add(Med(
            info: element['info'], concentration: element['concentration']));
      }
      totalPrice = map['totalPrice'].toDouble();
    } catch (e) {
      print("SingleMedicine->fromMap():: failed to initialize members $e");
    }
  }
}

/// ******************* ChildSingleMedicine **********************
class ChildSingleMedicine {
  late String name;
   List<Med> medicineList=List.empty(growable: true);
  late double totalPrice;

  ChildSingleMedicine({
    required this.name,
    required this.medicineList,
    required this.totalPrice,
  });

  ChildSingleMedicine.fromMap(Map<String, dynamic> map) {
    try {
      for (var element in map['medicineList']) {
        medicineList.add(Med(
            info: element['info'], concentration: element['concentration']));
      }
      totalPrice = map['totalPrice'].toDouble();
      name = map['name'];
    } catch (e) {
      print("ChildSingleMedicine->fromMap():: failed to initialize members $e");
    }
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "ChildSingleMedicine": "info",
    };
    return tmp;
  }
}

/// ******************* Med **********************
class Med {
  late String info;
  late int concentration;

  Med({
    required this.info,
    required this.concentration,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "info": info,
      "concentration": concentration,
    };
    return tmp;
  }
}
