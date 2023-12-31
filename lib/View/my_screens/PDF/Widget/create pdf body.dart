import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import 'Api PDF.dart';

class PDFBody {
  static Future<File> generateCenterText() {
    final pdf = Document();
    pdf.addPage(
      Page(
        build: (context) => Center(
          child: PdfLogo(),
        ),
      ),
    );
    return PdfApi.saveDocument(name: 'My first pdf Creation', pdf: pdf);
  }

  static Future<File> generateTestPdf() async {
    var data = await rootBundle.load('assets/fonts/Cairo/Cairo-Regular.ttf');
    final ttf = Font.ttf(data);

    final pdf = Document();
    final cusFont = Font.ttf(
      await rootBundle.load('assets/fonts/Janna.ttf'),
    );

    pdf.addPage(
      //Page(build: (context)=>Center()),
      MultiPage(
          pageFormat: PdfPageFormat.a4,
          theme: ThemeData.withFont(base: ttf),
          build: (context) => <Widget>[
                _buildCusHeader(),
                Text(
                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد...',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 20,
                    font: cusFont,
                  ),
                ),
                Paragraph(
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق. إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد...',
                  style: TextStyle(
                    fontSize: 20,
                    font: cusFont,
                  ),
                ),
                _buildCusHeadLine(),
                _buildLink(),
                ..._buildBulletPoints(),
                Header(
                  child: Text('my Big PDF '),
                ),
                Paragraph(
                  text: LoremText().paragraph(60),
                ),
                Paragraph(
                  text: LoremText().paragraph(60),
                ),
                Paragraph(
                  text: LoremText().paragraph(60),
                ),
                Paragraph(
                  text: LoremText().paragraph(60),
                ),
                Paragraph(
                  text: LoremText().paragraph(60),
                ),
                Paragraph(
                  text: LoremText().paragraph(60),
                ),
              ],
          footer: (context) {
            final text =
                ('Page ${context.pageNumber} of ${context.pagesCount}');
            return Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(top: 1 * PdfPageFormat.cm),
              child: Text(
                text,
                style: TextStyle(color: PdfColors.black),
              ),
            );
          }),
    );

    return PdfApi.saveDocument(name: 'My Paragraph PDF', pdf: pdf);
  }

  static Widget _buildCusHeader() => Container(
        padding: EdgeInsets.only(bottom: 3 * PdfPageFormat.mm),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2, color: PdfColors.blue),
          ),
        ),
        child: Row(
          children: [
            PdfLogo(),
            SizedBox(width: 0.5 * PdfPageFormat.cm),
            Text(
              'Create Your PDF',
              style: TextStyle(color: PdfColors.blue, fontSize: 20),
            ),
          ],
        ),
      );

  static Widget _buildCusHeadLine() => Header(
        child: Text(
          'My Third HeadLine',
          style: TextStyle(
            color: PdfColors.white,
            fontSize: 24,
          ),
        ),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(color: PdfColors.red),
      );

  static Widget _buildLink() => UrlLink(
        destination: 'https://flutter.dev',
        child: Text(
          'Go to Flutter.dev',
          style: TextStyle(
              color: PdfColors.blue, decoration: TextDecoration.overline),
        ),
      );

  static List<Widget> _buildBulletPoints() => [
        Bullet(text: 'First Bullet'),
        Bullet(text: 'Second Bullet'),
        Bullet(text: 'Third Bullet'),
      ];
}
