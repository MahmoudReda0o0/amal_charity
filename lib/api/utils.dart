/// @author:         Nader Hany
/// @version:        1.2
/// @date:           26/11/2023
/// @description:    this will provide some useful tools
/// 
import 'Models/cases.model.dart';

//// convert date to string formate like this yyyy/mm/dd
String date2string(DateTime date) {
  try {
    String tmp = '${date.year}/${date.month}/${date.day}';
    return tmp;
  } catch (e) {
    print("date2string():: failed to parse date....");
  }
  return '';
}

//// convert string formate like this yyyy/mm/dd to date
DateTime string2date(String date) {
  try {
    int y = 0, m = 0, d = 0;
    List<String> dat = date.split('/');
    y = int.parse(dat[0]);
    m = int.parse(dat[1]);
    d = int.parse(dat[2]);
    return DateTime(y, m, d);
  } catch (e) {
    print("string2date():: failed to parse date.... $e");
  }
  return DateTime.now();
}

void displayShortCaseList(List<ShortCase> myShortCases) {
  for (var element in myShortCases) {
    print("id: ${element.id}");
    print("familyInfo: ");
    element.familyInfo.display();
    print("fatherPhone: ${element.fatherPhone}");
    print("motherPhone: ${element.motherPhone}");
    print("************************");
  }
}