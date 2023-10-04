import 'dart:developer';
import 'package:amal_charity/State%20Managment/Provider/AppProvider/TextEditingController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../../../data/models/families_model.dart';
import '../../../../data/repositories/families_repo.dart';
import '../../../data/models/family_detailed.dart';
import '../../../data/ApiRequest/Get/FamilyDataApi.dart';
import '../../Provider/ApiProvider/FamilyData.dart';
part 'families_state.dart';

class FamiliesCubit extends Cubit<FamiliesState> {
  FamiliesRepo repo;
  List<FamilyModel> families = [];
  FamiliesCubit({required this.repo}) : super(FamiliesInitial());
  static FamiliesCubit get(BuildContext context) => BlocProvider.of(
        context,
      );

  FamilyDataResult dataResult = FamilyDataResult();
  FamilyDataApi dataApi = FamilyDataApi();
  FamilyDetailedModel? familyDetailedModel;
  void getFamilyById(String familyId, BuildContext context) {
    log("lets getFamilyById");
    emit(Loading());
    repo.getFamiliyById(familyId).then((FamilyDetailedModel value) {
      emit(GetFamilyByIdSuccessState());
      familyDetailedModel = value;
      print("The value of the family from the cubit is ${value.toString()}");
      Provider.of<ProviderFamilyData>(context, listen: false).family = value;
      print(
          " yyyyyyyyyyyyyyyyyy the retrieved husband age is ${value.husband!.age}");
    }).catchError((error) {
      log("Here is your error ${error.toString()}");
      emit(Error(error: error.toString()));
    });
  }

  void getAllFamilies() {
    log("lets get all families");
    emit(Loading());
    repo.getFamilies().then((value) {
      families = value;
      emit(GetFamiliesSuccessState());
    }).catchError((error) {
      log(error.toString());
      emit(Error(error: error.toString()));
    });
  }

  List<FamilyDetailedModel> detailedFamilies = [];
  void getDetailedFamilies() {
    emit(Loading());
    repo.getFamiliesInDetails().then((value) {
      detailedFamilies = value;
      log('${detailedFamilies[0].husband}');
      emit(GetDetailedFamiliesSuccess());
    }).catchError((error) {
      emit(Error(error: error));
    });
  }

  String addNewFamilyMessage = "";
  void addNewFamily({
    required Map<String, dynamic> family,
  }) {
    log("cubit go to add new family");
    repo.addNewFamily(family).then((value) {
      emit(AddNewFamilySuccessState(message: "New family added succssfully"));
      getAllFamilies();
    }).catchError((error) {
      print("cubit the error ocured $error");
      emit(Error(error: error));
    });
  }

  void deleteFamily({required String familyId}) {
    emit(Loading());
    repo.deleteFamily(familyId).then((value) {
      log(value.toString());
      emit(DeleteFamilySuccessState(message: "Delete Family done succssfully"));
    }).catchError((error) {
      print("$error");
      emit(Error(error: error));
    });
  }
}
