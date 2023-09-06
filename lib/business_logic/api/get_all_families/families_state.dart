// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'families_cubit.dart';

abstract class FamiliesState {}

class FamiliesInitial extends FamiliesState {}

class Error extends FamiliesState {
  String error;
  Error({
    required this.error,
  });
}

class Loading extends FamiliesState {}

class GetFamiliesSuccessState extends FamiliesState {}

class GetFamilyByIdSuccessState extends FamiliesState {}

class GetDetailedFamiliesSuccess extends FamiliesState {}
