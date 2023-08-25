import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../business_logic/Provider/AppProvider/ProviderAppData.dart';

class BuildHeader extends StatefulWidget {
  const BuildHeader({Key? key}) : super(key: key);

  @override
  State<BuildHeader> createState() => _BuildHeaderState();
}

class _BuildHeaderState extends State<BuildHeader> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderAppData>(builder: (context, _, child) {
      return Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text('${_.familyAppBar} : ${_.drawerIndex}'),
        ),
      );
    });
  }
}
