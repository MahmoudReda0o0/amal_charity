import 'package:amal_charity/State%20Managment/Provider/ApiProvider/update%20Family%20Data.dart';
import 'package:amal_charity/State%20Managment/Provider/AppProvider/TextEditingController.dart';
import 'package:amal_charity/data/web_services/families_web_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'State Managment/Provider/ApiProvider/FamilyData.dart';
import 'State Managment/Provider/AppProvider/ProviderAppData.dart';
import 'State Managment/Provider/AppProvider/ProviderUserProfile.dart';
import 'State Managment/api/get_all_families/families_cubit.dart';
import 'View/my_screens/Family/FamilyList.dart';
import 'View/my_screens/SplashScreen/OpeningSplash.dart';
import 'State Managment/api/bloc_observer.dart';
import 'package:amal_charity/data/repositories/families_repo.dart';

GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> get navigationKey => _navigationKey;

//this is the main of the project
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.green, // Set the status bar color
      statusBarIconBrightness:
          Brightness.light, // Light icons (black) on the status bar
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => FamiliesCubit(
            repo: FamiliesRepo(FamiliesWebServices())..getFamilies(),
          ),
        ),
        ChangeNotifierProvider<ProviderFamilyData>(
            create: (context) => ProviderFamilyData()),
        ChangeNotifierProvider<ProviderAppData>(
            create: (context) => ProviderAppData()),
        ChangeNotifierProvider<ProviderUserProfile>(
            create: (context) => ProviderUserProfile()),
        ChangeNotifierProvider<ProviderUpdateFamilyDate>(
            create: (context) => ProviderUpdateFamilyDate()),
        ChangeNotifierProvider<ProviderTextEditingController>(
            create: (context) => ProviderTextEditingController()),
      ],
      child: MaterialApp(
        // navigatorKey: navigationKey,
        navigatorKey: navigationKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Janna'),
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: OpeningSplash(),
        ),
      ),
    );
  }
}
