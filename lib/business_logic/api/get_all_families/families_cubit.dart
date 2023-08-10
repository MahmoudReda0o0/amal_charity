import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/families_model.dart';
import '../../../../data/repositories/families_repo.dart';
import '../../../data/models/family_detailed.dart';
part 'families_state.dart';

class FamiliesCubit extends Cubit<FamiliesState> {
  FamiliesRepo repo;
  List<FamilyModel> families = [];
  FamiliesCubit({required this.repo}) : super(FamiliesInitial());
  static FamiliesCubit get(BuildContext context) => BlocProvider.of(context);

  void getAllFamilies() {
    emit(Loading());
    repo.getFamilies().then((value) {
      families = value;
      emit(FamiliesGetFamiliesSuccess());
    });
  }
  List<FamilyDetailedModel> detailedFamilies = [];
  void getDetailedFamilies() {
    emit(Loading());
    repo.getFamiliesInDetails().then((value) {
      detailedFamilies = value;
      
      emit(FamiliesGetDetailedFamiliesSuccess());
    }).catchError((error) {
      emit(Error(error:error));
    });
  }
}
