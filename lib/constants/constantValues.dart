import 'package:flutter/material.dart';

import '../main.dart';

double mediaH = MediaQuery.of(navigationKey.currentContext!).size.height;
double mediaW = MediaQuery.of(navigationKey.currentContext!).size.width;

class PublicData{
  static List<String> familyObject=['بيانات الأسرة',  'بيانات الوالدين','بيانات الابناء','بيانات الدخل والخرج','بيانات الديون','بيانات المنزل','بيانات العلاج','بيانات المدارس','بيانات الجهاز'];
  static List<dynamic> pageRoute = ['/FamilyProfile','/ParentsData'   ,'/ChildrenData','/IncomeExpenses'   ,'/DebtData'    ,'/HouseData'   ,'/MedicalData','/SchoolData'   ,'/BrideData'];
  static List<IconData> DrawerIcon=[Icons.family_restroom,Icons.man  ,Icons.child_care,Icons.incomplete_circle,Icons.money_off,Icons.house,Icons.medical_information,Icons.school,Icons.free_breakfast];
  static List<String> wiseWords=['ما نقصت صدقة من مال، وما زاد الله عبداً بعفو إلا عزًّا، وما تواضع أحد لله إلا رفعه الله','خيرُ الناسِ أنفعُهم للناسِ','من نفس عن مؤمن كربة من كرب الدنيا,نفس الله عنه كربة من كرب يوم القيامة،ومن يسّر على معسر،يسّر الله عليه في الدنيا والآخرة','صنائع ‌المعروف تقي مصارع السوء، وصدقة السر تُطفئ غضبَ الربِّ، وصِلَةُ الرَّحِم تزيد في العمر','أَيُّهَا النَّاسُ أَفْشوا السَّلامَ، وَأَطْعِمُوا الطَّعَامَ، وَصَلُّوا باللَّيْل وَالنَّاسُ نِيامٌ، تَدخُلُوا الجَنَّةَ بِسَلامٍ'];
}
