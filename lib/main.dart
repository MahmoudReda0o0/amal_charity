import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'State Managment/Provider/ApiProvider/FamilyData.dart';
import 'State Managment/Provider/AppProvider/ProviderAppData.dart';
import 'State Managment/Provider/AppProvider/ProviderUserProfile.dart';
import 'View/my_screens/SplashScreen/OpeningSplash.dart';
import 'bloc_observer.dart';
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
      ChangeNotifierProvider<ProviderUserProfile>(create: (context)=>ProviderUserProfile()),
    ],
    child: MaterialApp(
      // navigatorKey: navigationKey,
      navigatorKey: navigationKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Janna'),
home: OpeningSplash(),
    ),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
