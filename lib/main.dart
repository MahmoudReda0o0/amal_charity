import 'package:amal_charity/generated/l10n.dart';
import 'package:amal_charity/presentation/my_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

//this is the main of the project
void main() {
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
    return MaterialApp(
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
      home: const HomeScreen(),
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}
