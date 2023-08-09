import 'package:amal_charity/business_logic/api/get_all_families/families.dart';
import 'package:amal_charity/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

import '../../data/repositories/families_repo.dart';
import '../../data/web_services/families_web_services.dart';
import 'family_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider =
        FamiliesProvider(repo: FamiliesRepo(FamiliesWebServices()));
    provider.getAllFamilies();
    return Scaffold(
      backgroundColor: HexColor("#F7F2EC"),
      appBar: AppBar(
        title: Text(
          S.of(context).families_list,
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: ChangeNotifierProvider<FamiliesProvider>(
        create: (context) => provider,
        child: ListView.separated(
          itemBuilder: (context, index) {
            return _buildListItem(index, context);
          },
          itemCount: 3,
          separatorBuilder: (context, index) => Container(),
        ),
      ),
    );
  }

  Widget _buildListItem(int index, BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const FamilyScreen(),
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.14,
        clipBehavior: Clip.hardEdge,
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.transparent,
            width: 0.0,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.transparent, width: 2.0),
              ),
              child: Center(
                child: Text(
                  S.of(context).family1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${S.of(context).name} / ',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${S.of(context).address} / ',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${S.of(context).phone} / ',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
