import 'dart:io';
import 'package:amal_charity/View/my_screens/PDF/Widget/Api%20PDF.dart';
import 'package:amal_charity/main.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:provider/provider.dart';
import '../../../../State Managment/Provider/AppProvider/ProviderAppData.dart';

class PDFPage1 {
  static Future<File> generatePage() async {

    var data = await rootBundle.load('assets/fonts/Cairo/Cairo-Regular.ttf');
    final ttf = Font.ttf(data);

    final _data = Provider.of<ProviderAppData>(navigationKey.currentContext!,
        listen: false);
    final pdf = Document();
    pdf.addPage(
      Page(
        pageFormat: PdfPageFormat.a4,
        theme: ThemeData.withFont(base: ttf),
        //orientation: PageOrientation.natural,
        build: (context) => Column(
          children: [
            Center(
              child: Text(
                'mahmoud',
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
    return PdfApi.saveDocument(name: 'Page 1', pdf: pdf);
  }
}
