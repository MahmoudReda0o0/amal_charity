/// @author:         Nader Hany
/// @version:        1.2
/// @date:           26/11/2023
/// @description:    this will be a submodel model for parents

/// *************** Husband *******************
class Husband {
  String name = '';
  int age = 0;
  bool enableWork = false;
  String job = '';
  String education = '';
  String teleNumber = '';

  // Empty constructor with default values
  Husband(
      {this.name = '',
      this.age = 0,
      this.enableWork = false,
      this.job = '',
      this.education = '',
      this.teleNumber = ''});

  // Constructor from Map
  Husband.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? '';
    age = map['age'] ?? 0;
    enableWork = map['enableWork'] ?? false;
    job = map['job'] ?? '';
    education = map['education'] ?? '';
    teleNumber = map['teleNumber'] ?? '';
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "name": name,
      "age": age,
      "enableWork": enableWork,
      "job": job,
      "education": education,
      "teleNumber": teleNumber,
    };
    return tmp;
  }
}

/// *************** Wife *******************
class Wife {
  String name = '';
  int age = 0;
  bool enableWork = false;
  bool enableMarry = false;
  String job = '';
  String education = '';
  String teleNumber = '';

  // Empty constructor with default values
  Wife({
    this.name = '',
    this.age = 0,
    this.enableWork = false,
    this.enableMarry = false,
    this.job = '',
    this.education = '',
    this.teleNumber = '',
  });

  // Constructor from Map
  Wife.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? '';
    age = map['age'] ?? 0;
    enableWork = map['enableWork'] ?? false;
    enableMarry = map['enableMarry'] ?? false;
    job = map['job'] ?? '';
    education = map['education'] ?? '';
    teleNumber = map['teleNumber'] ?? '';
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> tmp = {
      "name": name,
      "age": age,
      "enableWork": enableWork,
      "enableMarry": enableMarry,
      "job": job,
      "education": education,
      "teleNumber": teleNumber,
    };
    return tmp;
  }
}
