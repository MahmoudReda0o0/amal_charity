import 'dart:io';
import 'package:amal_charity/View/my_screens/PDF/Widget/Api%20PDF.dart';
import 'package:amal_charity/main.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:provider/provider.dart';
import '../../../../State Managment/Provider/AppProvider/ProviderAppData.dart';

class PDFPage1 {
  static Future<File> generatePage() async {
    final _data = Provider.of<ProviderAppData>(navigationKey.currentContext!,listen: false);
    final pdf = Document();
    pdf.addPage(
      Page(
        build: (context) => Column(
          children: [
            Center(child: Text('Mahmoud'),),
          ],
        ),
      ),
    );
    return PdfApi.saveDocument(name: 'Page 1', pdf: pdf);
  }
}
