import 'package:flutter/material.dart';

class ProviderUserProfile extends ChangeNotifier {
  String name ='' ;
  String password='' ;

  updateProfile (String name ,String password){
    this.name = name;
    this.password = password;
    notifyListeners();
  }
}