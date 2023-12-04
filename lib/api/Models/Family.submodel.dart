/// @author:         Nader Hany
/// @version:        1.2
/// @date:           26/11/2023
/// @description:    this will be a submodel model for family

/// *********************** FamilyInfo **************************
class FamilyInfo {
  double familyNo = 0, monthlyMoney = 0, familyPercent = 0;
  String familyAdress = '',
      location = '',
      familyBreadWinner = '',
      familyClass = '',
      sId = '';

  /// initialze the familyInfo based on values
  FamilyInfo(
      {this.familyNo = 0,
      this.monthlyMoney = 0,
      this.familyPercent = 0,
      this.familyAdress = '',
      this.location = '',
      this.familyBreadWinner = '',
      this.familyClass = '',
      this.sId = ''});

  /// initialize the FamilyInfo using a map
  FamilyInfo.fromMap(Map<String, dynamic> jsonObject) {
    try {
      familyAdress = jsonObject['familyAdress'];
      location = jsonObject['location'];
      familyBreadWinner = jsonObject['familyBreadWinner'];
      familyClass = jsonObject['familyClass'];
      sId = jsonObject['sId'];
      familyNo = jsonObject['familyNO'].toDouble();
      monthlyMoney = jsonObject['monthlyMoney'].toDouble();
      familyPercent = jsonObject['familyPercent'].toDouble();
    } catch (e) {
      print("FamilyInfo->fromMap():: failed to initialize the class members$e");
    }
  }
  void display() {
    print("{");
    print("   familyAdress: $familyAdress");
    print("   location: $location");
    print("   familyBreadWinner: $familyBreadWinner");
    print("   familyClass: $familyClass");
    print("   sId: $sId");
    print("   monthlyMoney: $monthlyMoney");
    print("   familyPercent: $familyPercent");
    print("}");
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "familyAdress": familyAdress,
      "location": location,
      "familyBreadWinner": familyBreadWinner,
      "familyClass": familyClass,
      "sId": sId,
      "monthlyMoney": monthlyMoney,
      "familyPercent": familyPercent
    };
    return tmp;
  }
}

/// *********************** Blankts **************************
class Blankts {
  int familyHave = 0, familyNeed = 0, familyTake = 0;

  Blankts({this.familyHave = 0, this.familyNeed = 0, this.familyTake = 0});

  Blankts.fromMap(Map<String, dynamic> map) {
    try {
      familyHave = map['familyHave'];
      familyNeed = map['familyNeed'];
      familyTake = map['familyTake'];
    } catch (e) {
      print(
          'Blankts->fromMap():: failed to initialize member varibales.... $e');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "familyHave": familyHave,
      "familyNeed": familyNeed,
      "familyTake": familyTake,
    };
    return tmp;
  }
}

/// *********************** HouseInfo **************************
class HouseInfo {
  String houseType = '';
  int monthlyRent = 0, roomsNumber = 0;
  late Blankts blankets;

  HouseInfo(
      {this.houseType = '',
      this.monthlyRent = 0,
      this.roomsNumber = 0,
      required this.blankets});

  HouseInfo.fromMap(Map<String, dynamic> map) {
    try {
      houseType = map['houseType'];
      monthlyRent = map['monthlyRent'];
      blankets = Blankts.fromMap(map['blankets']);
    } catch (e) {
      print(
          'HouseInfo->fromMap():: failed to initialize member varibales.... $e');
    }
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "houseType": houseType,
      "monthlyRent": monthlyRent,
      "roomsNumber": roomsNumber,
      "blankets": blankets.toMap()
    };
    return tmp;
  }
}
