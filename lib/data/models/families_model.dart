class FamilyModel {
  String? id;
  FamilyInfo? familyInfo;

  FamilyModel({this.id, this.familyInfo});

  FamilyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    familyInfo = json['FamilyInfo'] != null
        ? FamilyInfo.fromJson(json['FamilyInfo'])
        : null;
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
  }
}
