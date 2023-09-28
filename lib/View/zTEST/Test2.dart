// import 'dart:io';
// import 'package:open_filex/open_filex.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart';
//
// class PdfImprove {
//   static String name = 'Mahmoud reda';
//   static int age = 22;
//   static String job = 'junior Flutter Mobile Developer';
//   static Future<File> generate() async {
//
//     final pdf = Document();
//
//     pdf.addPage(
//       Page(
//         pageTheme: PageTheme(pageFormat: PdfPageFormat.a4),
//         build: (context) => Center(
//           child: Container(
//             height: 3 * PdfPageFormat.cm,
//             width: 2 * PdfPageFormat.cm,
//             color: PdfColors.yellow,
//             child: PdfLogo(),
//           ),
//         ),
//       ),
//     );
//     // pdf.addPage(
//     //   MultiPage(
//     //     //pageFormat: PdfPageFormat.a3,
//     //     build: (context) {
//     //       print('3');
//     //       return <Widget>[
//     //         Center(
//     //           child: PdfLogo(),
//     //         ),
//     //       ];
//     //     }
//     //   ),
//     // );
//
//     return saveDocument(name: 'MyImprovePdf', pdf: pdf);
//   }
//
//   static Future<File> saveDocument({
//     required String name,
//     required Document pdf,
//   }) async {
//     final bytes = await pdf.save();
//
//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$name');
//
//     await file.writeAsBytes(bytes);
//
//     return file;
//   }
//
//   static Future openFile(File file) async {
//     print('start open my pdf');
//     final url = 'asset/images/family.jpg';
//     print('$url');
//     await OpenFilex.open(url);
//     print('open file done');
//   }
// }
