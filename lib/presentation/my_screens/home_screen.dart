import 'package:amal_charity/data/models/families_model.dart';
import 'package:amal_charity/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../business_logic/api/get_all_families/cubit/families_cubit.dart';
import 'family_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = FamiliesCubit.get(context);
    cubit.getAllFamilies();
    return Scaffold(
      backgroundColor: HexColor("#F7F2EC"),
      appBar: AppBar(
        title: Text(
          S.of(context).families_list,
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: BlocConsumer<FamiliesCubit, FamiliesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return _buildListItem(index, context, cubit.families[index]);
            },
            itemCount: cubit.families.length,
            separatorBuilder: (context, index) => Container(),
          );
        },
      ),
    );
  }

  Widget _buildListItem(int index, BuildContext context, FamilyModel family) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FamilyScreen(
            family: family,
          ),
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
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
                  '${S.of(context).family}${index + 1}',
                  style: const TextStyle(
                    fontSize: 16,
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
              padding:
                  const EdgeInsetsDirectional.only(start: 8, top: 8, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${S.of(context).name} / ',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${S.of(context).address} / ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${S.of(context).phone} / ',
                    style: const TextStyle(
                      fontSize: 12,
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
