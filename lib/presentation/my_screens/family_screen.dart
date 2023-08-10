import 'package:amal_charity/data/models/family_detailed.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../generated/l10n.dart';

// ignore: must_be_immutable
class FamilyScreen extends StatelessWidget {
  FamilyDetailedModel family;
  int index;
  FamilyScreen({
    required this.family,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: false,
      child: Scaffold(
        backgroundColor: HexColor("#F7F2EC"),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            '${S.of(context).family} ${index + 1}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            _buildHusbandInfo(context),
            _buildWifeInfo(context),
            _buildInfoWidget(context, S.of(context).address,
                '${family.familyInfo?.familyAdress ?? ' '} '),
            _buildInfoWidget(context, S.of(context).number_of_kids,
                '${family.children?.childrenNumber ?? ' '} '),
            _buildInfoWidget(context, S.of(context).monthly_money,
                '${family.familyInfo?.monthlyMoney ?? ' '} '),
            _buildInfoWidget(context, S.of(context).phone,
                '${family.husband?.teleNumber ?? ' '} '),
            _buildInfoWidget(context, S.of(context).number_of_people_in_family,
                '${family.familyInfo?.familyNO ?? ' '} '),
          ],
        ),
        drawer: Drawer(
          child: _buildDrawerDesign(context),
        ),
      ),
    );
  }

  Widget _buildHusbandInfo(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.transparent, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              '${S.of(context).husband_name} / ${family.husband?.name ?? ' '} '),
          const SizedBox(
            height: 10,
          ),
          Text('${S.of(context).job} / ${family.husband?.job ?? ' '}'),
        ],
      ),
    );
  }

  Widget _buildWifeInfo(context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.transparent, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${S.of(context).wife_name} / ${family.wife?.name ?? ' '}'),
          const SizedBox(
            height: 10,
          ),
          Text('${S.of(context).job} / ${family.wife?.job ?? ' '}'),
        ],
      ),
    );
  }

  Widget _buildInfoWidget(context, String key, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.transparent, width: 2.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$key /  $value',
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerDesign(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 120,
          width: 120,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green,
                width: 3,
              ),
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(500))),
          child: Image.asset(
            'assets/images/family_green.png',
          ),
        ),
        Text(S.of(context).family),
        _buildDrawerInfoWidget(
          context,
          'assets/images/family.jpg',
          S.of(context).family_short_data,
        ),
      ],
    );
  }

  Widget _buildDrawerInfoWidget(context, String iconUrl, String text) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(
                iconUrl,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
