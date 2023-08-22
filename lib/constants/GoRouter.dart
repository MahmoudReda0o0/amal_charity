import 'package:amal_charity/presentation/my_screens/Login/Login.dart';
import 'package:go_router/go_router.dart';
import '../presentation/my_screens/Family/FamilyPageForm.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/',builder: (context,state)=> Login()),
  GoRoute(path: '/FamilyPageForm', builder: (context, state) => FamilyPageForm()),
 // GoRoute(path: '/ParentData', builder: (context, state) => ParentsData()),
  // GoRoute(path: '/ChildrenData', builder: (context, state) => ChildrenData()),
  // GoRoute(path: '/Income&Expenses', builder: (context, state) => Income&Expenses()),
  // GoRoute(path: '/DebtData', builder: (context, state) => DebtData()),
  // GoRoute(path: '/HouseData', builder: (context, state) => HouseData()),
  // GoRoute(path: '/MedicalData', builder: (context, state) => MedicalData()),
  // GoRoute(path: '/SchoolData', builder: (context, state) => SchoolData()),
  // GoRoute(path: '/BrideData', builder: (context, state) => BrideData()),
]);
