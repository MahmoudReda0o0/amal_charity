import 'package:amal_charity/constants/constantValues.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfPageForm extends StatelessWidget {
  const PdfPageForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color tableColor = Colors.black87;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            header(),
            tableTitle(text: "بيانات العائلة"),
            Table(
              columnWidths: {
                0: FixedColumnWidth(mediaW * 0.35), // fixed to 100 width
                1: FixedColumnWidth(mediaW * 0.15),
                2: FixedColumnWidth(mediaW * 0.35),
                4: FixedColumnWidth(mediaW * 0.15) //fixed to 100 width
              },
              border: TableBorder.all(color: tableColor, width: 1),
              children: [
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: 'عائل الأسرة',
                    child2: tableText(text: 'text'),
                    text4: 'رقم الأسرة'),
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: "رقم الهاتف",
                    child2: tableText(text: 'text'),
                    text4: "العنوان"),
                TableRow(children: [
                  Table(
                    border: TableBorder.all(color: tableColor),
                    children: [
                      TableRow(children: [tableText(text: '')]),
                      TableRow(children: [tableText(text: '')]),
                    ],
                  ),
                  Table(
                    border: TableBorder.all(color: tableColor),
                    children: [
                      TableRow(children: [tableText(text: 'الفئة')]),
                      TableRow(children: [tableText(text: 'الشهرية')]),
                    ],
                  ),
                  tableText(text: 'text'),
                  tableText(text: 'نسبة الأسرة \nالدخل/الخرج')
                ])
              ],
            ),
            tableTitle(text: 'بيانات الوالدين'),
            Table(
              columnWidths: {
                0: FixedColumnWidth(mediaW * 0.35),
                1: FixedColumnWidth(mediaW * 0.15),
                2: FixedColumnWidth(mediaW * 0.35),
                3: FixedColumnWidth(mediaW * 0.15),
              },
              border: TableBorder.all(color: tableColor),
              children: [
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: "الزوجة",
                    child2: tableText(text: 'text'),
                    text4: "الزوج"),
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: "العمر",
                    child2: tableText(text: 'text'),
                    text4: "العمر"),
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: "المؤهل",
                    child2: tableText(text: 'text'),
                    text4: "المؤهل"),
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: "الوظيفة",
                    child2: tableText(text: 'text'),
                    text4: "الوظيفة"),
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: "الهاتف",
                    child2: tableText(text: 'text'),
                    text4: "الهاتف"),
                cusRow4item(
                    child1: tableText(text: 'text'),
                    text2: "قادرة للعمل",
                    child2: tableText(text: 'text'),
                    text4: "قادر للعمل"),
              ],
            ),
            tableTitle(text: 'بيانات الاولاد'),
            Table(
                border: TableBorder.all(color: tableColor),
                columnWidths: {
                  0: FixedColumnWidth(mediaW * 0.23),
                  1: FixedColumnWidth(mediaW * 0.1),
                  2: FixedColumnWidth(mediaW * 0.23),
                  3: FixedColumnWidth(mediaW * 0.1),
                  4: FixedColumnWidth(mediaW * 0.23),
                  5: FixedColumnWidth(mediaW * 0.1),
                },
                children: List.generate(
                  3,
                  (index) => TableRow(children: [
                    tableText(text: ''),
                    tableText(text: 'المدرسة'),
                    tableText(text: ''),
                    tableText(text: 'العمر'),
                    tableText(text: ''),
                    tableText(text: 'الاسم'),
                  ]),
                )),
            tableTitle(text: 'بيانات الدخل'),
            Table(
              border: TableBorder.all(color: tableColor),
              columnWidths: {
                0: FixedColumnWidth(mediaW * 0.38),
                1: FixedColumnWidth(mediaW * 0.12),
                2: FixedColumnWidth(mediaW * 0.38),
                3: FixedColumnWidth(mediaW * 0.12),
              },
              children: [
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "عمل الزوجة",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "عمل الزوج"),
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: 'التموين',
                    child2: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text4: "الأولاد"),
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "الجمعيات",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "المعاش"),
                cusRow4item(
                    child1: tableText(text: 'total'),
                    text2: "الإجمالي",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "مساعدات +"),
              ],
            ),
            tableTitle(text: 'بيانات الخرج'),
            Table(
              columnWidths: {
                0: FixedColumnWidth(mediaW * 0.38),
                1: FixedColumnWidth(mediaW * 0.12),
                2: FixedColumnWidth(mediaW * 0.38),
                3: FixedColumnWidth(mediaW * 0.12),
              },
              border: TableBorder.all(color: tableColor),
              children: [
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "كهربا",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "المنزل"),
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "الغاز",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "الميا"),
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "العلاج",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "الطعام"),
                cusRow4item(
                    child1: tableText(text: 'total'),
                    text2: "الإجمالي",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "نفقات +"),
              ],
            ),
            tableTitle(text: 'بيانات الديون'),
            Table(
              columnWidths: {
                0: FixedColumnWidth(mediaW * 0.38),
                1: FixedColumnWidth(mediaW * 0.12),
                2: FixedColumnWidth(mediaW * 0.38),
                3: FixedColumnWidth(mediaW * 0.12),
              },
              border: TableBorder.all(color: tableColor),
              children: [
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "طعام",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "قروض"),
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "كهربا",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "ايجار منزل"),
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "غاز",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "ميا"),
                cusRow4item(
                    child1: cusTable2item(text1: 'مبلغ', text2: 'تفاصيل'),
                    text2: "علاج",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "جهاز"),
                cusRow4item(
                    child1: tableText(text: 'total'),
                    text2: "الإجمالي",
                    child2: cusTable2item(text1: 'مبلغ', text2: "تفاصيل"),
                    text4: "ديون +"),
              ],
            ),
            tableTitle(text: 'بيانات المنزل'),
            Table(
              border: TableBorder.all(color: tableColor),
              columnWidths: {
                0: FixedColumnWidth(mediaW * 0.18),
                1: FixedColumnWidth(mediaW * 0.15),
                2: FixedColumnWidth(mediaW * 0.18),
                3: FixedColumnWidth(mediaW * 0.15),
                4: FixedColumnWidth(mediaW * 0.18),
                5: FixedColumnWidth(mediaW * 0.15),
              },
              children: [
                TableRow(children: [
                  tableText(text: ''),
                  tableText(text: 'الغرف'),
                  tableText(text: ''),
                  tableText(text: 'الايجار'),
                  tableText(text: ''),
                  tableText(text: 'المنزل'),
                ]),
                TableRow(children: [
                  tableText(text: ''),
                  tableText(text: 'اللي هيتوزع'),
                  tableText(text: ''),
                  tableText(text: 'اللي محتاجينهم'),
                  tableText(text: ''),
                  tableText(text: 'البطاطين'),
                ]),
              ],
            ),
            tableTitle(text: 'بيانات العلاج'),
            medicineTables(),
            tableTitle(text: 'المدارس'),
            Table(
              border: TableBorder.all(color: tableColor),
              columnWidths: {
                0: FixedColumnWidth(mediaW * 0.3),
                1: FixedColumnWidth(mediaW * 0.15),
                2: FixedColumnWidth(mediaW * 0.34),
                3: FixedColumnWidth(mediaW * 0.15),
              },
              children: List.generate(
                2,
                (index) => cusRow4item(
                    child1: tableText(text: '5'),
                    text2: 'شنطه',
                    child2: tableText(text: 'المرحله الدراسيه'),
                    text4: 'الاسم'),
              ),
            ),
            tableTitle(text: 'جهاز العروسه'),
            Table(
              border: TableBorder.all(color: tableColor),
              columnWidths: {},
            ),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //color: Colors.red,
            height: mediaH * 0.1,
            width: mediaW * 0.2,
            child: const Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'جمعية الأمل الخيرية',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: mediaW * 0.07),
              ),
              Text(
                'مشهرة برقم 1493 لسنة 2007',
                style: TextStyle(fontSize: mediaW * 0.032),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column medicineTables() {
    return Column(
      children: [
        Table(
            border: TableBorder.all(color: Colors.black87),
            columnWidths: {
              0: FixedColumnWidth(mediaW * 0.8),
              1: FixedColumnWidth(mediaW * 0.2),
            },
            children: List.generate(
                1,
                (index) => cusRow2item(
                    child1:
                        cusTable2item(text1: 'التركيز', text2: 'تفاصيل الدوا'),
                    text2: 'الاب'))),
        Table(
            border: TableBorder.all(color: Colors.black87),
            columnWidths: {
              0: FixedColumnWidth(mediaW * 0.8),
              1: FixedColumnWidth(mediaW * 0.2),
            },
            children: List.generate(
                1,
                (index) => cusRow2item(
                    child1:
                        cusTable2item(text1: 'التركيز', text2: 'تفاصيل الدوا'),
                    text2: 'الام'))),
        Table(
            border: TableBorder.all(color: Colors.black87),
            columnWidths: {
              0: FixedColumnWidth(mediaW * 0.8),
              1: FixedColumnWidth(mediaW * 0.2),
            },
            children: List.generate(
                1,
                (index) => cusRow2item(
                    child1:
                        cusTable2item(text1: 'التركيز', text2: 'تفاصيل الدوا'),
                    text2: 'الاولاد'))),
      ],
    );
  }

  TableRow cusRow4item({
    required Widget child1,
    required String text2,
    required Widget child2,
    required String text4,
  }) {
    return TableRow(children: [
      child1,
      tableText(text: text2),
      child2,
      tableText(text: text4),
    ]);
  }

  Table cusTable2item({required String text1, required String text2}) {
    return Table(
      border: TableBorder(verticalInside: BorderSide(color: Colors.black)),
      columnWidths: {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(3),
      },
      children: [
        cusRow2item(child1: tableText(text: text1), text2: text2),
      ],
    );
  }

  TableRow cusRow2item({required Widget child1, required String text2}) {
    return TableRow(children: [
      child1,
      tableText(text: text2),
    ]);
  }

  Widget tableText({required String text}) {
    return Text('$text',
        textAlign: TextAlign.center, style: TextStyle(fontSize: mediaW * 0.02));
  }

  Widget tableTitle({required String text}) {
    return Container(
      //color: Colors.red,
      decoration: BoxDecoration(),
      height: mediaH * 0.03,
      width: mediaW,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.green),
        ),
      ),
    );
  }
}
