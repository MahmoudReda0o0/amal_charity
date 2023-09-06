import 'package:amal_charity/business_logic/Provider/ApiProvider/FamilyData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import '../../../../data/models/families_model.dart';
import '../../../../data/repositories/families_repo.dart';
import '../../../data/models/family_detailed.dart';
import '../../../data/ApiRequest/Get/FamilyDataApi.dart';
part 'families_state.dart';

class FamiliesCubit extends Cubit<FamiliesState> {
  FamiliesRepo repo;
  List<FamilyModel> families = [];
  FamiliesCubit({required this.repo}) : super(FamiliesInitial());
  static FamiliesCubit get(BuildContext context) => BlocProvider.of(context);

  FamilyDataResult dataResult = FamilyDataResult();
  FamilyDataApi dataApi = FamilyDataApi();
  FamilyDetailedModel? family;
  //This is for you Mahmoud Read
  void getFamilyById(String familyId, BuildContext context) {
    print("lets getFamilyById");
    emit(Loading());
    repo.getFamiliyById(familyId).then(
      (FamilyDetailedModel value) {
        family = value;
        Provider.of<ProviderFamilyData>(context, listen: false).family = family;
        print("the retrieved husband age is ${family!.husband!.age}");
        emit(GetFamilyByIdSuccessState());
      },
    ).catchError((error) {
      print(error.toString());
      emit(Error(error: error.toString()));
    });
  }

  void getAllFamilies() {
    print("lets get all families");
    emit(Loading());
    repo.getFamilies().then((value) {
      families = value;
      emit(GetFamiliesSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(Error(error: error.toString()));
    });
  }

  List<FamilyDetailedModel> detailedFamilies = [];
  void getDetailedFamilies() {
    emit(Loading());
    repo.getFamiliesInDetails().then((value) {
      detailedFamilies = value;
      print('${detailedFamilies[0].husband}');
      emit(GetDetailedFamiliesSuccess());
    }).catchError((error) {
      emit(Error(error: error));
    });
  }
}
