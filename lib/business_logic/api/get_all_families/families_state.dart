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

class FamiliesGetFamiliesSuccess extends FamiliesState {}

class Loading extends FamiliesState {}

class FamiliesGetDetailedFamiliesSuccess extends FamiliesState {}
