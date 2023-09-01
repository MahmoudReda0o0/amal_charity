import 'package:amal_charity/business_logic/Provider/FamilyData.dart';
import 'package:amal_charity/generated/l10n.dart';
import 'package:amal_charity/presentation/my_screens/SplashScreen/OpeningSplash.dart';
import 'package:amal_charity/presentation/my_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'bloc_observer.dart';
import 'business_logic/Provider/AppProvider/ProviderAppData.dart';
import 'business_logic/api/get_all_families/families_cubit.dart';
import 'constants/GoRouter.dart';
import 'data/repositories/families_repo.dart';
import 'data/web_services/families_web_services.dart';


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
    return MultiProvider(providers: [
      ChangeNotifierProvider<ProviderFamilyData>(create: (context)=>ProviderFamilyData()),
      ChangeNotifierProvider<ProviderAppData>(create: (context)=>ProviderAppData()),
    ],
    child: MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Janna'),
    ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
