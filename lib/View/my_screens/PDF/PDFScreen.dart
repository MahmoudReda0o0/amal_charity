import 'package:amal_charity/View/my_screens/PDF/Widget/Api%20PDF.dart';
import 'package:amal_charity/View/my_screens/PDF/Widget/PdfPage1.dart';
import 'package:amal_charity/View/my_screens/PDF/Widget/create%20pdf%20body.dart';
import 'package:amal_charity/View/my_screens/PDF/pdf%20Page%20Form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PDFScreen extends StatelessWidget {
  const PDFScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PdfPageForm(),
                  ),
                );
              },
              child: Text('open Test Pdf Page',textAlign: TextAlign.center),
            ),
          ),
          TextButton(
            onPressed: () async {
              try {
                final pdfFile = await PDFPage1.generatePage();
                print('11253');
                await PdfApi.openFile(pdfFile);
              } catch (e) {
                print('open file error : $e');
              }
            },
            child: Text('Open Pdf',textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
