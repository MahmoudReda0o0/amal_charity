import 'package:amal_charity/business_logic/api/get_all_families/families_cubit.dart';
import 'package:amal_charity/data/repositories/families_repo.dart';
import 'package:amal_charity/data/web_services/families_web_services.dart';
import 'package:amal_charity/presentation/my_screens/Login/Login.dart';
import 'package:amal_charity/presentation/my_screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../presentation/my_screens/Family/FamilyPageForm.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const Login()),
  // GoRoute(
  //   path: '/FamilyPageForm',
  //   builder: (context, state) => FamilyPageForm(familyId: "", index: 0),
  // ),
  GoRoute(
    path: '/HomeScreen',
    builder: (context, state) => BlocProvider<FamiliesCubit>(
      create: (context) =>
          FamiliesCubit(repo: FamiliesRepo(FamiliesWebServices())),
      child: const HomeScreen(),
    ),
  ),
  GoRoute(
    path: '/FamilyPageForm',
    builder: (context, state) => BlocProvider<FamiliesCubit>(
      create: (context) =>
          FamiliesCubit(repo: FamiliesRepo(FamiliesWebServices())),
      child: FamilyPageForm(familyId: "", index: 0),
    ),
  ),

  // GoRoute(path: '/ParentData', builder: (context, state) => ParentsData()),
  // GoRoute(path: '/ChildrenData', builder: (context, state) => ChildrenData()),
  // GoRoute(path: '/Income&Expenses', builder: (context, state) => Income&Expenses()),
  // GoRoute(path: '/DebtData', builder: (context, state) => DebtData()),
  // GoRoute(path: '/HouseData', builder: (context, state) => HouseData()),
  // GoRoute(path: '/MedicalData', builder: (context, state) => MedicalData()),
  // GoRoute(path: '/SchoolData', builder: (context, state) => SchoolData()),
  // GoRoute(path: '/BrideData', builder: (context, state) => BrideData()),
]);
