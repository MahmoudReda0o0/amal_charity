import 'package:amal_charity/View/my_screens/PDF/Widget/Api%20PDF.dart';
import 'package:amal_charity/View/my_screens/PDF/Widget/create%20pdf%20body.dart';
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
          TextButton(onPressed: () async {
            try{
              final pdfFile =await  PDFBody.generatePageBody();
              await PdfApi.openFile(pdfFile);
            }catch(e){
              print('open file error : $e');
            }

          }, child: Text('Open Pdf'),),
        ],
      ),
    );
  }
}
