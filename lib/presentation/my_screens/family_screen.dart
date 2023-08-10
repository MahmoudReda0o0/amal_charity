import 'package:amal_charity/data/models/families_model.dart';
import 'package:amal_charity/data/models/family_detailed.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../generated/l10n.dart';

// ignore: must_be_immutable
class FamilyScreen extends StatelessWidget {
  FamilyDetailedModel family;

  FamilyScreen({
    required this.family,
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
            S.of(context).family,
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
            _buildInfoWidget(
                context, S.of(context).address, "this is the address"),
            _buildInfoWidget(context, S.of(context).number_of_kids,
                "this is the number of kids"),
            _buildInfoWidget(context, S.of(context).monthly_money,
                "this is the monthly money"),
            _buildInfoWidget(context, S.of(context).phone, "this is the phone"),
            _buildInfoWidget(context, S.of(context).number_of_people_in_family,
                "this is the number of people_in_family"),
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
          Text('${S.of(context).husband_name} / '),
          const SizedBox(
            height: 10,
          ),
          Text('${S.of(context).job} / '),
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
          Text('${S.of(context).wife_name} / '),
          const SizedBox(
            height: 10,
          ),
          Text('${S.of(context).job} / '),
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
          Text('$key / '),
        ],
      ),
    );
  }

  Widget _buildDrawerInfoWidget(context, String iconUrl, String text) {
    return InkWell(
      onTap: () {
        //do your work here
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

  Widget _buildDrawerDesign(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(
            'assets/images/family.jpg',
          ),
        ),
        Text(S.of(context).family),
        _buildDrawerInfoWidget(
          context,
          'assets/images/family.jpg',
          'بيانات مختصرة',
        ),
      ],
    );
  }
}
