

import 'dart:io';

import 'package:amal_charity/View/my_screens/PDF/Widget/Api%20PDF.dart';
import 'package:amal_charity/main.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:provider/provider.dart';

import '../../../../State Managment/Provider/AppProvider/ProviderAppData.dart';

class PDFPage1 {

  Future<File> generatePage() async {
    final _data = Provider.of<ProviderAppData>(navigationKey.currentContext!);
    final pdf = Document();
    pdf.addPage(
      Page(
        build: (context) => Column(
          children: [
            Center(child: Text('${_data.name}'),),
          ],
        ),
      ),
    );
    return PdfApi.saveDocument(name: 'Page 1', pdf: pdf);
  }
}
